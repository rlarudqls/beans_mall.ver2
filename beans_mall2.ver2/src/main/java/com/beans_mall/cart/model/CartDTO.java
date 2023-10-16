package com.beans_mall.cart.model;

import com.beans_mall.attach.model.AttachImageVO;

import java.util.List;

public class CartDTO {

    private final int cartId;
    private final String memberId;
    private final int beanId;
    private final int beanCount;
    private final String beanName;
    private final int beanPrice;
    private final double beanDiscount;
    private int salePrice;
    private int totalPrice;
    private int point;
    private int totalPoint;
    private List<AttachImageVO> imageList;

    private CartDTO(Builder builder) {
        this.cartId = builder.cartId;
        this.memberId = builder.memberId;
        this.beanId = builder.beanId;
        this.beanCount = builder.beanCount;
        this.beanName = builder.beanName;
        this.beanPrice = builder.beanPrice;
        this.beanDiscount = builder.beanDiscount;
        this.salePrice = builder.salePrice;
        this.totalPrice = builder.totalPrice;
        this.point = builder.point;
        this.totalPoint = builder.totalPoint;
        this.imageList = builder.imageList;
    }

    public int getCartId() {
        return cartId;
    }

    public String getMemberId() {
        return memberId;
    }

    public int getBeanId() {
        return beanId;
    }

    public int getBeanCount() {
        return beanCount;
    }

    public String getBeanName() {
        return beanName;
    }

    public int getBeanPrice() {
        return beanPrice;
    }

    public double getBeanDiscount() {
        return beanDiscount;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public int getPoint() {
        return point;
    }

    public int getTotalPoint() {
        return totalPoint;
    }

    public List<AttachImageVO> getImageList() {
        return imageList;
    }

    public static Builder builder(int cartId, String memberId, int beanId, int beanCount) {
        return new Builder(cartId, memberId, beanId, beanCount);
    }

    public static class Builder {
        private final int cartId;
        private final String memberId;
        private final int beanId;
        private final int beanCount;
        private String beanName;
        private int beanPrice;
        private double beanDiscount;
        private int salePrice;
        private int totalPrice;
        private int point;
        private int totalPoint;
        private List<AttachImageVO> imageList;

        public Builder(int cartId, String memberId, int beanId, int beanCount) {
            this.cartId = cartId;
            this.memberId = memberId;
            this.beanId = beanId;
            this.beanCount = beanCount;
        }

        public Builder beanName(String beanName) {
            this.beanName = beanName;
            return this;
        }

        public Builder beanPrice(int beanPrice) {
            this.beanPrice = beanPrice;
            return this;
        }

        public Builder beanDiscount(double beanDiscount) {
            this.beanDiscount = beanDiscount;
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

        public Builder point(int point) {
            this.point = point;
            return this;
        }

        public Builder totalPoint(int totalPoint) {
            this.totalPoint = totalPoint;
            return this;
        }

        public Builder imageList(List<AttachImageVO> imageList) {
            this.imageList = imageList;
            return this;
        }

        public CartDTO build() {
            return new CartDTO(this);
        }
    }

    public void initSaleTotal() {
        this.salePrice = (int) (this.beanPrice * (1 - this.beanDiscount));
        this.totalPrice = this.salePrice * this.beanCount;
        this.point = (int) (Math.floor(this.salePrice * 0.05));
        this.totalPoint = this.point * this.beanCount;
    }

    @Override
    public String toString() {
        return "CartDTO [cartId=" + cartId + ", memberId=" + memberId + ", beanId=" + beanId + ", beanCount=" + beanCount
                + ", beanName=" + beanName + ", beanPrice=" + beanPrice + ", beanDiscount=" + beanDiscount
                + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + ", point=" + point + ", totalPoint="
                + totalPoint + ", imageList=" + imageList + "]";
    }
}
