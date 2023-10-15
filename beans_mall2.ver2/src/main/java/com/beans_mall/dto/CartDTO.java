package com.beans_mall.dto;

import java.util.List;

import com.beans_mall.vo.AttachImageVO;

public class CartDTO {

	private int cartId;

	private String memberId;

	private int beanId;

	private int beanCount;

	// bean

	private String beanName;

	private int beanPrice;

	private double beanDiscount;

	// 추가
	private int salePrice;

	private int totalPrice;

	private int point;

	private int totalPoint;

	/* 상품 이미지 */
	private List<AttachImageVO> imageList;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getBeanId() {
		return beanId;
	}

	public void setBeanId(int beanId) {
		this.beanId = beanId;
	}

	public int getBeanCount() {
		return beanCount;
	}

	public void setBeanCount(int beanCount) {
		this.beanCount = beanCount;
	}

	public String getBeanName() {
		return beanName;
	}

	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}

	public int getBeanPrice() {
		return beanPrice;
	}

	public void setBeanPrice(int beanPrice) {
		this.beanPrice = beanPrice;
	}

	public double getBeanDiscount() {
		return beanDiscount;
	}

	public void setBeanDiscount(double beanDiscount) {
		this.beanDiscount = beanDiscount;
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

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	public void initSaleTotal() {
		this.salePrice = (int) (this.beanPrice * (1 - this.beanDiscount));
		this.totalPrice = this.salePrice * this.beanCount;
		this.point = (int) (Math.floor(this.salePrice * 0.05));
		this.totalPoint = this.point * this.beanCount;
	}

	@Override
	public String toString() {
		return "BeanDTO [beanId=" + beanId + ", memberId=" + memberId + ", beanId=" + beanId + ", beanCount="
				+ beanCount + ", beanName=" + beanName + ", beanPrice=" + beanPrice + ", beanDiscount=" + beanDiscount
				+ ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + ", point=" + point + ", totalPoint="
				+ totalPoint + ", imageList=" + imageList + "]";
	}

}
