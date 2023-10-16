package com.beans_mall.order.model;

public class OrderCancelDTO {

    private final String memberId;
    private String orderId;
    private String keyword;
    private int amount;
    private int pageNum;

    private OrderCancelDTO(Builder builder) {
        this.memberId = builder.memberId;
        this.orderId = builder.orderId;
        this.keyword = builder.keyword;
        this.amount = builder.amount;
        this.pageNum = builder.pageNum;
    }

    public String getMemberId() {
        return memberId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public static Builder builder(String memberId) {
        return new Builder(memberId);
    }

    public static class Builder {
        private final String memberId;
        private String orderId = "";
        private String keyword = "";
        private int amount = 0;
        private int pageNum = 1;

        public Builder(String memberId) {
            this.memberId = memberId;
        }

        public Builder orderId(String orderId) {
            this.orderId = orderId;
            return this;
        }

        public Builder keyword(String keyword) {
            this.keyword = keyword;
            return this;
        }

        public Builder amount(int amount) {
            this.amount = amount;
            return this;
        }

        public Builder pageNum(int pageNum) {
            this.pageNum = pageNum;
            return this;
        }

        public OrderCancelDTO build() {
            return new OrderCancelDTO(this);
        }
    }

    @Override
    public String toString() {
        return "OrderCancelDTO [memberId=" + memberId + ", orderId=" + orderId + ", keyword=" + keyword
                + ", amount=" + amount + ", pageNum=" + pageNum + "]";
    }
}
