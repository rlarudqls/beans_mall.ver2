package com.beans_mall.dto;

public class OrderItemDTO {

	/* 주문 번호 */
	private String orderId;
	
	/* 상품 번호 */
    private int beanId;
    
	/* 주문 수량 */
    private int beanCount;
    
	/* orderItem 기본키 */
    private int orderItemId;
    
	/* 상품 한 개 가격 */
    private int beanPrice;
    
	/* 상품 할인 율 */
    private double beanDiscount;
    
	/* 상품 한개 구매 시 획득 포인트 */
    private int savePoint;
    
	/* DB테이블 존재 하지 않는 데이터 */
    
	/* 할인 적용된 가격 */
    private int salePrice;
    
	/* 총 가격(할인 적용된 가격 * 주문 수량) */
    private int totalPrice;
    
	/* 총 획득 포인트(상품 한개 구매 시 획득 포인트 * 수량) */
    private int totalSavePoint;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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

	public int getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
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

	public int getSavePoint() {
		return savePoint;
	}

	public void setSavePoint(int savePoint) {
		this.savePoint = savePoint;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getTotalSavePoint() {
		return totalSavePoint;
	}

	public void setTotalSavePoint(int totalSavePoint) {
		this.totalSavePoint = totalSavePoint;
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
