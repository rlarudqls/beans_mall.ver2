package com.beans_mall.bean.model;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;

public class SelectDTO {
	
	private int beanId;
	private String beanName;
	private String cateName;
	private double ratingAvg;
	private List<AttachImageVO> imageList;
	private int saleRate;
	private int priceSale;
	private int priceOrigin;
	
	public int getBeanId() {
		return beanId;
	}
	
	public void setBeanId(int beanId) {
		this.beanId = beanId;
	}
	
	public String getBeanName() {
		return beanName;
	}
	
	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}
	
	public String getCateName() {
		return cateName;
	}
	
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	
	public double getRatingAvg() {
		return ratingAvg;
	}
	
	public void setRatingAvg(double ratingAvg) {
		this.ratingAvg = ratingAvg;
	}
	
	public List<AttachImageVO> getImageList() {
		return imageList;
	}
	
	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}
	
	public int getSaleRate() {
		return saleRate;
	}
	
	public void setSaleRate(int saleRate) {
		this.saleRate = saleRate;
	}
	
	public int getPriceSale() {
		return priceSale;
	}
	
	public void setPriceSale(int priceSale) {
		this.priceSale = priceSale;
	}
	
	public int getPriceOrigin() {
		return priceOrigin;
	}
	
	public void setPriceOrigin(int priceOrigin) {
		this.priceOrigin = priceOrigin;
	}
	
	@Override
	public String toString() {
		return "SelectDTO [beanId=" + beanId + ", beanName=" + beanName + ", cateName=" + cateName + ", ratingAvg="
				+ ratingAvg + ", imageList=" + imageList + ", saleRate=" + saleRate + ", priceSale=" + priceSale
				+ ", priceOrigin=" + priceOrigin + "]";
	}
	
}
