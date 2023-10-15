package com.beans_mall.vo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class BeanVO {

	/* 상품 id */
	private int beanId;

	/* 상품 이름 */
	private String beanName;

	/* 판매자 id */
	private int authorId;

	/* 판매자 이름 */
	private String authorName;

	/* 출판일 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date publeYear;

	/* 판촉회사 */
	private String publisher;

	/* 카테고리 코드 */
	private String cateCode;

	/* 상품 가격 */
	private int beanPrice;

	/* 상품 재고 */
	private int beanStock;

	/* 상품 할인률(백분율) */
	private double beanDiscount;

	/* 상품 소개 */
	private String beanIntro;

	/* 상품 목차 */
	private String beanContents;

	/* 등록 날짜 */
	private Date regDate;

	/* 수정 날짜 */
	private Date updateDate;

	/* 이미지 정보 */
	private List<AttachImageVO> imageList;

	/* 카테고리 이름 */
	private String cateName;

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

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public Date getPubleYear() {
		return publeYear;
	}

	public void setPubleYear(Date publeYear) {
		this.publeYear = publeYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public int getBeanPrice() {
		return beanPrice;
	}

	public void setBeanPrice(int beanPrice) {
		this.beanPrice = beanPrice;
	}

	public int getBeanStock() {
		return beanStock;
	}

	public void setBeanStock(int beanStock) {
		this.beanStock = beanStock;
	}

	public double getBeanDiscount() {
		return beanDiscount;
	}

	public void setBeanDiscount(double beanDiscount) {
		this.beanDiscount = beanDiscount;
	}

	public String getBeanIntro() {
		return beanIntro;
	}

	public void setBeanIntro(String beanIntro) {
		this.beanIntro = beanIntro;
	}

	public String getBeanContents() {
		return beanContents;
	}

	public void setBeanContents(String beanContents) {
		this.beanContents = beanContents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	@Override
	public String toString() {
		return "BeanVO [beanId=" + beanId + ", beanName=" + beanName + ", authorId=" + authorId + ", authorName="
				+ authorName + ", publeYear=" + publeYear + ", publisher=" + publisher + ", cateCode=" + cateCode
				+ ", beanPrice=" + beanPrice + ", beanStock=" + beanStock + ", beanDiscount=" + beanDiscount
				+ ", beanIntro=" + beanIntro + ", beanContents=" + beanContents + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + "]";
	}
}
