package com.beans_mall.cart.db;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.attach.dao.KKBAttachDAO;
import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.cart.dao.KKBCartDAO;
import com.beans_mall.cart.model.CartDTO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private KKBCartDAO kkbCartDAO;

	@Autowired
	private KKBAttachDAO kkbAttachDAO;

	@Override
	public int addCart(CartDTO cart) {

		// 장바구니 데이터 체크
		CartDTO checkCart = (CartDTO) kkbCartDAO.checkCart(cart);

		if (checkCart != null) {
			return 2;
		}

		// 장바구니 등록 & 에러 시 0반환
		try {
			return kkbCartDAO.addCart(cart);
		} catch (Exception e) {
			return 0;
		}

	}

	@Override
	public List<CartDTO> getCartList(String memberId) {

		List<CartDTO> cart = kkbCartDAO.getCart(memberId);

		for (CartDTO dto : cart) {

			/* 종합 정보 초기화 */
			dto.initSaleTotal();

			/* 이미지 정보 얻기 */
			int beanId = dto.getBeanId();

			List<AttachImageVO> imageList = (List<AttachImageVO>) kkbAttachDAO.getAttachList(beanId);

			dto.setImageList(imageList);
		}

		return cart;

	}

	@Override
	public int modifyCount(CartDTO cart) {

		return kkbCartDAO.modifyCount(cart);
	}

	@Override
	public int deleteCart(int cartId) {

		return kkbCartDAO.deleteCart(cartId);
	}

}