package com.beans_mall.dao;

import java.util.List;

import com.beans_mall.dto.OrderDTO;
import com.beans_mall.dto.OrderItemDTO;
import com.beans_mall.dto.OrderPageItemDTO;
import com.beans_mall.vo.BeanVO;
import com.beans_mall.vo.MemberVO;

public interface KKBOrderDAO {

	/* 주문 상품 정보 */
	public OrderPageItemDTO getGoodsInfo(int beanId);

	/* 주문 상품 정보(주문 처리) */
	public OrderItemDTO getOrderInfo(int beanId);

	/* 주문 테이블 등록 */
	public int enrollOrder(OrderDTO ord);

	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemDTO orid);

	/* 주문 금액 차감 */
	public int deductMoney(MemberVO member);

	/* 주문 재고 차감 */
	public int deductStock(BeanVO bean);

	/* 주문 취소 */
	public int orderCancel(String orderId);

	/* 주문 상품 정보(주문취소) */
	public List<OrderItemDTO> getOrderItemInfo(String orderId);

	/* 주문 정보(주문 취소) */
	public OrderDTO getOrder(String orderId);
}
