package com.beans_mall.order.db;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beans_mall.admin.dao.KKBAdminDAO;
import com.beans_mall.attach.dao.KKBAttachDAO;
import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.bean.dao.KKBBeanDAO;
import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.cart.dao.KKBCartDAO;
import com.beans_mall.cart.model.CartDTO;
import com.beans_mall.member.dao.KKBMemberDAO;
import com.beans_mall.member.model.MemberVO;
import com.beans_mall.order.dao.KKBOrderDAO;
import com.beans_mall.order.model.OrderCancelDTO;
import com.beans_mall.order.model.OrderDTO;
import com.beans_mall.order.model.OrderItemDTO;
import com.beans_mall.order.model.OrderPageItemDTO;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private KKBOrderDAO kkbOrderDAO;

	@Autowired
	private KKBAttachDAO kkbAttachDAO;

	@Autowired
	private KKBMemberDAO kkbMemberDAO;

	@Autowired
	private KKBCartDAO kkbCartDAO;

	@Autowired
	private KKBBeanDAO kkbBeanDAO;

	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {

		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();

		for (OrderPageItemDTO ord : orders) {

			OrderPageItemDTO beanInfo = kkbOrderDAO.getGoodsInfo(ord.getBeanId());

			beanInfo.setBeanCount(ord.getBeanCount());

			beanInfo.initSaleTotal();

			List<AttachImageVO> imageList = kkbAttachDAO.getAttachList(beanInfo.getBeanId());

			beanInfo.setImageList(imageList);

			result.add(beanInfo);
		}

		return result;

	}

	@Override
	@Transactional
	public void order(OrderDTO ord) {

		/* 사용할 데이터 가져오기 */
		/* 회원 정보 */
		MemberVO member = kkbMemberDAO.getMemberInfo(ord.getMemberId());
		/* 주문 정보 */
		List<OrderItemDTO> ords = new ArrayList<>();
		for (OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = kkbOrderDAO.getOrderInfo(oit.getBeanId());
			// 수량 셋팅
			orderItem.setBeanCount(oit.getBeanCount());
			// 기본정보 셋팅
			orderItem.initSaleTotal();
			// List객체 추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();

		/* DB 주문,주문상품(,배송정보) 넣기 */

		/* orderId 만들기 및 OrderDTO 객체 orderId에 저장 */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String orderId = member.getMemberId() + format.format(date);
		ord.setOrderId(orderId);

		/* db 넣기 */
		kkbOrderDAO.enrollOrder(ord); // bean_order 등록
		for (OrderItemDTO oit : ord.getOrders()) { // bean_orderItem 등록
			oit.setOrderId(orderId);
			kkbOrderDAO.enrollOrderItem(oit);
		}

		/* 비용 포인트 변동 적용 */

		/* 비용 차감 & 변동 돈(money) Member객체 적용 */
		int calMoney = member.getMoney();
		calMoney -= ord.getOrderFinalSalePrice();
		member.setMoney(calMoney);

		/* 포인트 차감, 포인트 증가 & 변동 포인트(point) Member객체 적용 */
		int calPoint = member.getPoint();
		calPoint = calPoint - ord.getUsePoint() + ord.getOrderSavePoint(); // 기존 포인트 - 사용 포인트 + 획득 포인트
		member.setPoint(calPoint);

		/* 변동 돈, 포인트 DB 적용 */
		kkbOrderDAO.deductMoney(member);

		/* 재고 변동 적용 */
		for (OrderItemDTO oit : ord.getOrders()) {
			/* 변동 재고 값 구하기 */
			BeanVO bean = (BeanVO) kkbBeanDAO.getGoodsInfo(oit.getBeanId());
			bean.setBeanStock(bean.getBeanStock() - oit.getBeanCount());
			/* 변동 값 DB 적용 */
			kkbOrderDAO.deductStock(bean);
		}

		/* 장바구니 제거 */
		for (OrderItemDTO oit : ord.getOrders()) {
			CartDTO dto = new CartDTO(null);
			dto.setMemberId(ord.getMemberId());
			dto.setBeanId(oit.getBeanId());

			kkbCartDAO.deleteOrderCart(dto);
		}

	}

	/* 주문취소 */
	@Override
	@Transactional
	public void orderCancel(OrderCancelDTO dto) {

		/* 주문, 주문상품 객체 */
		/* 회원 */
		MemberVO member = kkbMemberDAO.getMemberInfo(dto.getMemberId());
		/* 주문상품 */
		List<OrderItemDTO> ords = kkbOrderDAO.getOrderItemInfo(dto.getOrderId());
		for (OrderItemDTO ord : ords) {
			ord.initSaleTotal();
		}
		/* 주문 */
		OrderDTO orw = kkbOrderDAO.getOrder(dto.getOrderId());
		orw.setOrders(ords);

		orw.getOrderPriceInfo();

		/* 주문상품 취소 DB */
		kkbOrderDAO.orderCancel(dto.getOrderId());

		/* 돈, 포인트, 재고 변환 */
		/* 돈 */
		int calMoney = member.getMoney();
		calMoney += orw.getOrderFinalSalePrice();
		member.setMoney(calMoney);

		/* 포인트 */
		int calPoint = member.getPoint();
		calPoint = calPoint + orw.getUsePoint() - orw.getOrderSavePoint();
		member.setPoint(calPoint);

		/* DB적용 */
		kkbOrderDAO.deductMoney(member);

		/* 재고 */
		for (OrderItemDTO ord : orw.getOrders()) {
			BeanVO bean = kkbBeanDAO.getGoodsInfo(ord.getBeanId());
			bean.setBeanStock(bean.getBeanStock() + ord.getBeanCount());
			kkbOrderDAO.deductStock(bean);
		}

	}

	@Override
	public void orderCancle(OrderCancelDTO dto) {
		// TODO Auto-generated method stub

	}
}
