package com.beans_mall.bean.model;

public class CateVO {

    private final int tier;
    private final String cateName;
    private final String cateCode;
    private final String cateParent;

    private CateVO(Builder builder) {
        this.tier = builder.tier;
        this.cateName = builder.cateName;
        this.cateCode = builder.cateCode;
        this.cateParent = builder.cateParent;
    }

    public int getTier() {
        return tier;
    }

    public String getCateName() {
        return cateName;
    }

    public String getCateCode() {
        return cateCode;
    }

    public String getCateParent() {
        return cateParent;
    }

    public static Builder builder(int tier, String cateName, String cateCode) {
        return new Builder(tier, cateName, cateCode);
    }

    public static class Builder {
        private final int tier;
        private final String cateName;
        private final String cateCode;
        private String cateParent;

        public Builder(int tier, String cateName, String cateCode) {
            this.tier = tier;
            this.cateName = cateName;
            this.cateCode = cateCode;
        }

        public Builder cateParent(String cateParent) {
            this.cateParent = cateParent;
            return this;
        }

        public CateVO build() {
            return new CateVO(this);
        }
    }

    @Override
    public String toString() {
        return "CateVO [tier=" + tier + ", cateName=" + cateName + ", cateCode=" + cateCode + ", cateParent="
                + cateParent + "]";
    }
}
