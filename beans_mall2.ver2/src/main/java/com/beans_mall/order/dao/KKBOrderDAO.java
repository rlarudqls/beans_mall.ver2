package com.beans_mall.order.dao;

import java.util.List;

import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.member.model.MemberVO;
import com.beans_mall.order.model.OrderDTO;
import com.beans_mall.order.model.OrderItemDTO;
import com.beans_mall.order.model.OrderPageItemDTO;

public interface KKBOrderDAO {

    // 주문 상품 정보 조회
    OrderPageItemDTO getGoodsInfo(int beanId);

    // 주문 테이블 등록
    OrderBuilder enrollOrder(OrderDTO ord);

    // 주문 아이템 테이블 등록
    OrderItemBuilder enrollOrderItem(OrderItemDTO oit);

    // 주문 금액 차감
    MoneyDeductBuilder deductMoney(MemberVO member);

    // 주문 재고 차감
    StockDeductBuilder deductStock(BeanVO bean);

    // 주문 취소
    OrderCancelBuilder orderCancel(String string);

    interface OrderInfoBuilder {
        OrderPageItemDTO build();
    }

    interface OrderBuilder {
        OrderItemBuilder withOrderInfo(OrderDTO ord);

        int build();
    }

    interface OrderItemBuilder {
        OrderBuilder withOrderItemInfo(OrderItemDTO orid);

        int build();
    }

    interface MoneyDeductBuilder {
        StockDeductBuilder withDeductMoney(MemberVO member);

        int build();
    }

    interface StockDeductBuilder {
        OrderCancelBuilder withDeductStock(BeanVO bean);

        int build();
    }

    interface OrderCancelBuilder {
        OrderItemInfoBuilder orderCancel(String orderId);
    }

    interface OrderItemInfoBuilder {
        OrderDTO getOrder();

        List<OrderItemDTO> getOrderItemInfo();
    }

	OrderItemDTO getOrderInfo(int beanId);

	List<OrderItemDTO> getOrderItemInfo(String orderId);

	OrderDTO getOrder(String orderId);
}
