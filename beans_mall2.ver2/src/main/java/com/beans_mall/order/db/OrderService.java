package com.beans_mall.order.db;

import java.util.List;

import com.beans_mall.order.model.OrderCancelDTO;
import com.beans_mall.order.model.OrderDTO;
import com.beans_mall.order.model.OrderPageItemDTO;

public interface OrderService {

	/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);

	/* 주문 */
	public void order(OrderDTO orw);

	/* 주문 취소 */
	public void orderCancle(OrderCancelDTO dto);

	void orderCancel(OrderCancelDTO dto);

}