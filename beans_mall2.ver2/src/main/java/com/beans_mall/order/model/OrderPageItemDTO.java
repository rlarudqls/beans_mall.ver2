package com.beans_mall.order.model;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;

public class OrderPageItemDTO {

    /* 뷰로부터 전달받을 값 */
    private int beanId;
    
    private int beanCount;
    
    /* DB로부터 꺼내올 값 */
    private String beanName;
    
    private int beanPrice;
    
    private double beanDiscount;
    
    /* 만들어 낼 값 */
    private int salePrice;
    
    private int totalPrice;
    
    private int point;
    
    private int totalPoint;
    
    /* 상품 이미지 */
    private List<AttachImageVO> imageList;         

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

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public int getTotalPoint() {
        return totalPoint;
    }

    public void setTotalPoint(int totalPoint) {
        this.totalPoint = totalPoint;
    }    

    public void initSaleTotal() {
        this.salePrice = (int) (this.beanPrice * (1 - this.beanDiscount));
        this.totalPrice = this.salePrice * this.beanCount;
        this.point = (int) (Math.floor(this.salePrice * 0.05));
        this.totalPoint = this.point * this.beanCount;
    }

    public List<AttachImageVO> getImageList() {
        return imageList;
    }

    public void setImageList(List<AttachImageVO> imageList) {
        this.imageList = imageList;
    }

    @Override
    public String toString() {
        return "OrderPageItemDTO [beanId=" + beanId + ", beanCount=" + beanCount + ", beanName=" + beanName
                + ", beanPrice=" + beanPrice + ", beanDiscount=" + beanDiscount + ", salePrice=" + salePrice
                + ", totalPrice=" + totalPrice + ", point=" + point + ", totalPoint=" + totalPoint + ", imageList="
                + imageList + "]";
    }    
}
