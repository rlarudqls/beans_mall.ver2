package com.beans_mall.order.model;

import java.util.Date;
import java.util.List;

public class OrderDTO {

    private final String orderId;
    private String addressee;
    private final String memberId;
    private String memberAddr1;
    private String memberAddr2;
    private String memberAddr3;
    private String orderState;
    private List<OrderItemDTO> orders;
    private int deliveryCost;
    private int usePoint;
    private Date orderDate;

    private OrderDTO(Builder builder) {
        this.orderId = builder.orderId;
        this.addressee = builder.addressee;
        this.memberId = builder.memberId;
        this.memberAddr1 = builder.memberAddr1;
        this.memberAddr2 = builder.memberAddr2;
        this.memberAddr3 = builder.memberAddr3;
        this.orderState = builder.orderState;
        this.orders = builder.orders;
        this.deliveryCost = builder.deliveryCost;
        this.usePoint = builder.usePoint;
        this.orderDate = builder.orderDate;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getAddressee() {
        return addressee;
    }

    public void setAddressee(String addressee) {
        this.addressee = addressee;
    }

    public String getMemberId() {
        return memberId;
    }

    public String getMemberAddr1() {
        return memberAddr1;
    }

    public void setMemberAddr1(String memberAddr1) {
        this.memberAddr1 = memberAddr1;
    }

    public String getMemberAddr2() {
        return memberAddr2;
    }

    public void setMemberAddr2(String memberAddr2) {
        this.memberAddr2 = memberAddr2;
    }

    public String getMemberAddr3() {
        return memberAddr3;
    }

    public void setMemberAddr3(String memberAddr3) {
        this.memberAddr3 = memberAddr3;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public List<OrderItemDTO> getOrders() {
        return orders;
    }

    public void setOrders(List<OrderItemDTO> orders) {
        this.orders = orders;
    }

    public int getDeliveryCost() {
        return deliveryCost;
    }

    public void setDeliveryCost(int deliveryCost) {
        this.deliveryCost = deliveryCost;
    }

    public int getUsePoint() {
        return usePoint;
    }

    public void setUsePoint(int usePoint) {
        this.usePoint = usePoint;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public static Builder builder(String orderId, String memberId) {
        return new Builder(orderId, memberId);
    }

    public static class Builder {
        private final String orderId;
        private String addressee = "";
        private final String memberId;
        private String memberAddr1 = "";
        private String memberAddr2 = "";
        private String memberAddr3 = "";
        private String orderState = "";
        private List<OrderItemDTO> orders;
        private int deliveryCost = 0;
        private int usePoint = 0;
        private Date orderDate;

        public Builder(String orderId, String memberId) {
            this.orderId = orderId;
            this.memberId = memberId;
        }

        public Builder addressee(String addressee) {
            this.addressee = addressee;
            return this;
        }

        public Builder memberAddr1(String memberAddr1) {
            this.memberAddr1 = memberAddr1;
            return this;
        }

        public Builder memberAddr2(String memberAddr2) {
            this.memberAddr2 = memberAddr2;
            return this;
        }

        public Builder memberAddr3(String memberAddr3) {
            this.memberAddr3 = memberAddr3;
            return this;
        }

        public Builder orderState(String orderState) {
            this.orderState = orderState;
            return this;
        }

        public Builder orders(List<OrderItemDTO> orders) {
            this.orders = orders;
            return this;
        }

        public Builder deliveryCost(int deliveryCost) {
            this.deliveryCost = deliveryCost;
            return this;
        }

        public Builder usePoint(int usePoint) {
            this.usePoint = usePoint;
            return this;
        }

        public Builder orderDate(Date orderDate) {
            this.orderDate = orderDate;
            return this;
        }

        public OrderDTO build() {
            return new OrderDTO(this);
        }
    }

    @Override
    public String toString() {
        return "OrderDTO [orderId=" + orderId + ", addressee=" + addressee + ", memberId=" + memberId + ", memberAddr1="
                + memberAddr1 + ", memberAddr2=" + memberAddr2 + ", memberAddr3=" + memberAddr3 + ", orderState="
                + orderState + ", orders=" + orders + ", deliveryCost=" + deliveryCost + ", usePoint=" + usePoint
                + ", orderDate=" + orderDate + "]";
    }

    public void getOrderPriceInfo() {
        int orderSalePrice = 0;
        int orderSavePoint = 0;

        for (OrderItemDTO order : orders) {
            orderSalePrice += order.getTotalPrice();
            orderSavePoint += order.getTotalSavePoint();
        }

        if (orderSalePrice >= 30000) {
            deliveryCost = 0;
        } else {
            deliveryCost = 3000;
        }

        int orderFinalSalePrice = orderSalePrice + deliveryCost - usePoint;
    }

	public void setOrderId(String orderId2) {
		// TODO Auto-generated method stub
		
	}

	public int getOrderFinalSalePrice() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getOrderSavePoint() {
		// TODO Auto-generated method stub
		return 0;
	}
}
