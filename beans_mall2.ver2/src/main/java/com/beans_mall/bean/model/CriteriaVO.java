package com.beans_mall.bean.model;

import java.util.Arrays;

public class CriteriaVO {

    private final int pageNum;
    private final int amount;
    private final int skip;
    private final String type;
    private final String keyword;
    private final String[] authorArr;
    private final String cateCode;
    private final int beanId;

    private CriteriaVO(Builder builder) {
        this.pageNum = builder.pageNum;
        this.amount = builder.amount;
        this.skip = builder.skip;
        this.type = builder.type;
        this.keyword = builder.keyword;
        this.authorArr = builder.authorArr;
        this.cateCode = builder.cateCode;
        this.beanId = builder.beanId;
    }

    public int getPageNum() {
        return pageNum;
    }

    public int getAmount() {
        return amount;
    }

    public int getSkip() {
        return skip;
    }

    public String getType() {
        return type;
    }

    public String getKeyword() {
        return keyword;
    }

    public String[] getAuthorArr() {
        return authorArr;
    }

    public String getCateCode() {
        return cateCode;
    }

    public int getBeanId() {
        return beanId;
    }

    public static Builder builder(int pageNum, int amount) {
        return new Builder(pageNum, amount);
    }

    public static class Builder {
        private final int pageNum;
        private final int amount;
        private int skip;
        private String type;
        private String keyword;
        private String[] authorArr;
        private String cateCode;
        private int beanId;

        public Builder(int pageNum, int amount) {
            this.pageNum = pageNum;
            this.amount = amount;
            this.skip = (pageNum - 1) * amount;
        }

        public Builder skip(int skip) {
            this.skip = skip;
            return this;
        }

        public Builder type(String type) {
            this.type = type;
            return this;
        }

        public Builder keyword(String keyword) {
            this.keyword = keyword;
            return this;
        }

        public Builder authorArr(String[] authorArr) {
            this.authorArr = authorArr;
            return this;
        }

        public Builder cateCode(String cateCode) {
            this.cateCode = cateCode;
            return this;
        }

        public Builder beanId(int beanId) {
            this.beanId = beanId;
            return this;
        }

        public CriteriaVO build() {
            return new CriteriaVO(this);
        }
    }

    @Override
    public String toString() {
        return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", type=" + type
                + ", keyword=" + keyword + ", authorArr=" + Arrays.toString(authorArr) + ", cateCode=" + cateCode
                + ", beanId=" + beanId + "]";
    }
}
