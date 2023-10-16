//initSaleTotal() 메서드 호출을 생성자에서 수행하게 만들었습니다.
package com.beans_mall.order.model;

import java.util.List;
import com.beans_mall.attach.model.AttachImageVO;

public class OrderPageItemDTO {

    private int beanId;
    private int beanCount;
    private String beanName;
    private int beanPrice;
    private double beanDiscount;
    private int salePrice;
    private int totalPrice;
    private int point;
    private int totalPoint;
    private List<AttachImageVO> imageList;

    public OrderPageItemDTO(int beanId, int beanCount, String beanName, int beanPrice, double beanDiscount,
            List<AttachImageVO> imageList) {
        this.beanId = beanId;
        this.beanCount = beanCount;
        this.beanName = beanName;
        this.beanPrice = beanPrice;
        this.beanDiscount = beanDiscount;
        this.imageList = imageList;
        initSaleTotal();
    }

    private void initSaleTotal() {
        this.salePrice = (int) (this.beanPrice * (1 - this.beanDiscount));
        this.totalPrice = this.salePrice * this.beanCount;
        this.point = (int) (Math.floor(this.salePrice * 0.05));
        this.totalPoint = this.point * this.beanCount;
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

    @Override
    public String toString() {
        return "OrderPageItemDTO [beanId=" + beanId + ", beanCount=" + beanCount + ", beanName=" + beanName
                + ", beanPrice=" + beanPrice + ", beanDiscount=" + beanDiscount + ", salePrice=" + salePrice
                + ", totalPrice=" + totalPrice + ", point=" + point + ", totalPoint=" + totalPoint + ", imageList="
                + imageList + "]";
    }
}
