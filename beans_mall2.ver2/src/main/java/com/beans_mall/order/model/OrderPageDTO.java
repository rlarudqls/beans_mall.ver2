package com.beans_mall.order.model;

import java.util.List;

public class OrderPageDTO {

    private final List<OrderPageItemDTO> orders;

    public OrderPageDTO(List<OrderPageItemDTO> orders) {
        this.orders = orders;
    }

    public List<OrderPageItemDTO> getOrders() {
        return orders;
    }

    @Override
    public String toString() {
        return "OrderPageDTO [orders=" + orders + "]";
    }
}
