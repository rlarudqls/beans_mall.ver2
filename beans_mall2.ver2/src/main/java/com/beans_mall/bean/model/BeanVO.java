package com.beans_mall.bean.model;

import com.beans_mall.attach.model.AttachImageVO;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class BeanVO {

    private final int beanId;
    private final String beanName;
    private final int authorId;
    private final String authorName;
    private final Date publeYear;
    private final String publisher;
    private final String cateCode;
    private final int beanPrice;
    private final int beanStock;
    private final double beanDiscount;
    private final String beanIntro;
    private final String beanContents;
    private final Date regDate;
    private final Date updateDate;
    private final List<AttachImageVO> imageList;
    private final String cateName;

    private BeanVO(Builder builder) {
        this.beanId = builder.beanId;
        this.beanName = builder.beanName;
        this.authorId = builder.authorId;
        this.authorName = builder.authorName;
        this.publeYear = builder.publeYear;
        this.publisher = builder.publisher;
        this.cateCode = builder.cateCode;
        this.beanPrice = builder.beanPrice;
        this.beanStock = builder.beanStock;
        this.beanDiscount = builder.beanDiscount;
        this.beanIntro = builder.beanIntro;
        this.beanContents = builder.beanContents;
        this.regDate = builder.regDate;
        this.updateDate = builder.updateDate;
        this.imageList = builder.imageList;
        this.cateName = builder.cateName;
    }

    public int getBeanId() {
        return beanId;
    }

    public String getBeanName() {
        return beanName;
    }

    public int getAuthorId() {
        return authorId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public Date getPubleYear() {
        return publeYear;
    }

    public String getPublisher() {
        return publisher;
    }

    public String getCateCode() {
        return cateCode;
    }

    public int getBeanPrice() {
        return beanPrice;
    }

    public int getBeanStock() {
        return beanStock;
    }

    public double getBeanDiscount() {
        return beanDiscount;
    }

    public String getBeanIntro() {
        return beanIntro;
    }

    public String getBeanContents() {
        return beanContents;
    }

    public Date getRegDate() {
        return regDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public List<AttachImageVO> getImageList() {
        return imageList;
    }

    public String getCateName() {
        return cateName;
    }

    public static Builder builder(int beanId, String beanName) {
        return new Builder(beanId, beanName);
    }

    public static class Builder {
        private final int beanId;
        private final String beanName;
        private int authorId;
        private String authorName;
        private Date publeYear;
        private String publisher;
        private String cateCode;
        private int beanPrice;
        private int beanStock;
        private double beanDiscount;
        private String beanIntro;
        private String beanContents;
        private Date regDate;
        private Date updateDate;
        private List<AttachImageVO> imageList;
        private String cateName;

        public Builder(int beanId, String beanName) {
            this.beanId = beanId;
            this.beanName = beanName;
        }

        public Builder authorId(int authorId) {
            this.authorId = authorId;
            return this;
        }

        public Builder authorName(String authorName) {
            this.authorName = authorName;
            return this;
        }

        public Builder publeYear(Date publeYear) {
            this.publeYear = publeYear;
            return this;
        }

        public Builder publisher(String publisher) {
            this.publisher = publisher;
            return this;
        }

        public Builder cateCode(String cateCode) {
            this.cateCode = cateCode;
            return this;
        }

        public Builder beanPrice(int beanPrice) {
            this.beanPrice = beanPrice;
            return this;
        }

        public Builder beanStock(int beanStock) {
            this.beanStock = beanStock;
            return this;
        }

        public Builder beanDiscount(double beanDiscount) {
            this.beanDiscount = beanDiscount;
            return this;
        }

        public Builder beanIntro(String beanIntro) {
            this.beanIntro = beanIntro;
            return this;
        }

        public Builder beanContents(String beanContents) {
            this.beanContents = beanContents;
            return this;
        }

        public Builder regDate(Date regDate) {
            this.regDate = regDate;
            return this;
        }

        public Builder updateDate(Date updateDate) {
            this.updateDate = updateDate;
            return this;
        }

        public Builder imageList(List<AttachImageVO> imageList) {
            this.imageList = imageList;
            return this;
        }

        public Builder cateName(String cateName) {
            this.cateName = cateName;
            return this;
        }

        public BeanVO build() {
            return new BeanVO(this);
        }
    }
}
