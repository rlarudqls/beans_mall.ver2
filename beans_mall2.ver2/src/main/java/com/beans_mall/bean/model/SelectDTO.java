package com.beans_mall.bean.model;

import com.beans_mall.attach.model.AttachImageVO;

import java.util.List;

public class SelectDTO {

    private final int beanId;
    private final String beanName;
    private final String cateName;
    private final double ratingAvg;
    private final List<AttachImageVO> imageList;
    private final int saleRate;
    private final int priceSale;
    private final int priceOrigin;

    private SelectDTO(Builder builder) {
        this.beanId = builder.beanId;
        this.beanName = builder.beanName;
        this.cateName = builder.cateName;
        this.ratingAvg = builder.ratingAvg;
        this.imageList = builder.imageList;
        this.saleRate = builder.saleRate;
        this.priceSale = builder.priceSale;
        this.priceOrigin = builder.priceOrigin;
    }

    public int getBeanId() {
        return beanId;
    }

    public String getBeanName() {
        return beanName;
    }

    public String getCateName() {
        return cateName;
    }

    public double getRatingAvg() {
        return ratingAvg;
    }

    public List<AttachImageVO> getImageList() {
        return imageList;
    }

    public int getSaleRate() {
        return saleRate;
    }

    public int getPriceSale() {
        return priceSale;
    }

    public int getPriceOrigin() {
        return priceOrigin;
    }

    public static Builder builder(int beanId, String beanName) {
        return new Builder(beanId, beanName);
    }

    public static class Builder {
        private final int beanId;
        private final String beanName;
        private String cateName;
        private double ratingAvg;
        private List<AttachImageVO> imageList;
        private int saleRate;
        private int priceSale;
        private int priceOrigin;

        public Builder(int beanId, String beanName) {
            this.beanId = beanId;
            this.beanName = beanName;
        }

        public Builder cateName(String cateName) {
            this.cateName = cateName;
            return this;
        }

        public Builder ratingAvg(double ratingAvg) {
            this.ratingAvg = ratingAvg;
            return this;
        }

        public Builder imageList(List<AttachImageVO> imageList) {
            this.imageList = imageList;
            return this;
        }

        public Builder saleRate(int saleRate) {
            this.saleRate = saleRate;
            return this;
        }

        public Builder priceSale(int priceSale) {
            this.priceSale = priceSale;
            return this;
        }

        public Builder priceOrigin(int priceOrigin) {
            this.priceOrigin = priceOrigin;
            return this;
        }

        public SelectDTO build() {
            return new SelectDTO(this);
        }
    }

    @Override
    public String toString() {
        return "SelectDTO [beanId=" + beanId + ", beanName=" + beanName + ", cateName=" + cateName + ", ratingAvg="
                + ratingAvg + ", imageList=" + imageList + ", saleRate=" + saleRate + ", priceSale=" + priceSale
                + ", priceOrigin=" + priceOrigin + "]";
    }

	public void setImageList(List<AttachImageVO> imageList2) {
		// TODO Auto-generated method stub
		
	}
}
