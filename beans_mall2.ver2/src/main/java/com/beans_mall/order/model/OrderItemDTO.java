package com.beans_mall.order.model;

public class OrderItemDTO {

    private final String orderId;
    private final int beanId;
    private final int beanCount;
    private int orderItemId;
    private final int beanPrice;
    private final double beanDiscount;
    private int savePoint;
    private int salePrice;
    private int totalPrice;
    private int totalSavePoint;

    private OrderItemDTO(Builder builder) {
        this.orderId = builder.orderId;
        this.beanId = builder.beanId;
        this.beanCount = builder.beanCount;
        this.orderItemId = builder.orderItemId;
        this.beanPrice = builder.beanPrice;
        this.beanDiscount = builder.beanDiscount;
        this.savePoint = builder.savePoint;
        this.salePrice = builder.salePrice;
        this.totalPrice = builder.totalPrice;
        this.totalSavePoint = builder.totalSavePoint;
    }

    public String getOrderId() {
        return orderId;
    }

    public int getBeanId() {
        return beanId;
    }

    public int getBeanCount() {
        return beanCount;
    }

    public int getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(int orderItemId) {
        this.orderItemId = orderItemId;
    }

    public int getBeanPrice() {
        return beanPrice;
    }

    public double getBeanDiscount() {
        return beanDiscount;
    }

    public int getSavePoint() {
        return savePoint;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public int getTotalSavePoint() {
        return totalSavePoint;
    }

    public static Builder builder(String orderId, int beanId, int beanCount, int beanPrice, double beanDiscount) {
        return new Builder(orderId, beanId, beanCount, beanPrice, beanDiscount);
    }

    public static class Builder {
        private final String orderId;
        private final int beanId;
        private final int beanCount;
        private int orderItemId;
        private final int beanPrice;
        private final double beanDiscount;
        private int savePoint;
        private int salePrice;
        private int totalPrice;
        private int totalSavePoint;

        public Builder(String orderId, int beanId, int beanCount, int beanPrice, double beanDiscount) {
            this.orderId = orderId;
            this.beanId = beanId;
            this.beanCount = beanCount;
            this.beanPrice = beanPrice;
            this.beanDiscount = beanDiscount;
        }

        public Builder orderItemId(int orderItemId) {
            this.orderItemId = orderItemId;
            return this;
        }

        public Builder savePoint(int savePoint) {
            this.savePoint = savePoint;
            return this;
        }

        public Builder salePrice(int salePrice) {
            this.salePrice = salePrice;
            return this;
        }

        public Builder totalPrice(int totalPrice) {
            this.totalPrice = totalPrice;
            return this;
        }

        public Builder totalSavePoint(int totalSavePoint) {
            this.totalSavePoint = totalSavePoint;
            return this;
        }

        public OrderItemDTO build() {
            return new OrderItemDTO(this);
        }
    }

    @Override
    public String toString() {
        return "OrderItemDTO [orderId=" + orderId + ", beanId=" + beanId + ", beanCount=" + beanCount + ", orderItemId="
                + orderItemId + ", beanPrice=" + beanPrice + ", beanDiscount=" + beanDiscount + ", savePoint="
                + savePoint + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + ", totalSavePoint="
                + totalSavePoint + "]";
    }

    public void initSaleTotal() {
        this.salePrice = (int) (this.beanPrice * (1 - this.beanDiscount));
        this.totalPrice = this.salePrice * this.beanCount;
        this.savePoint = (int) (Math.floor(this.salePrice * 0.05));
        this.totalSavePoint = this.savePoint * this.beanCount;
    }
}
