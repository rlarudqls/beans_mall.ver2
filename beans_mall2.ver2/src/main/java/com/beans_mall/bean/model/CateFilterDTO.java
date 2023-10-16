package com.beans_mall.bean.model;

public class CateFilterDTO {

    private final String cateName;
    private final String cateCode;
    private final int cateCount;
    private final String cateGroup;

    private CateFilterDTO(Builder builder) {
        this.cateName = builder.cateName;
        this.cateCode = builder.cateCode;
        this.cateCount = builder.cateCount;
        this.cateGroup = builder.cateGroup;
    }

    public String getCateName() {
        return cateName;
    }

    public String getCateCode() {
        return cateCode;
    }

    public int getCateCount() {
        return cateCount;
    }

    public String getCateGroup() {
        return cateGroup;
    }

    public static Builder builder(String cateName, String cateCode) {
        return new Builder(cateName, cateCode);
    }

    public static class Builder {
        private final String cateName;
        private final String cateCode;
        private int cateCount;
        private String cateGroup;

        public Builder(String cateName, String cateCode) {
            this.cateName = cateName;
            this.cateCode = cateCode;
            this.cateGroup = cateCode.split("")[0];
        }

        public Builder cateCount(int cateCount) {
            this.cateCount = cateCount;
            return this;
        }

        public CateFilterDTO build() {
            return new CateFilterDTO(this);
        }
    }

    @Override
    public String toString() {
        return "CateFilterDTO [cateName=" + cateName + ", cateCode=" + cateCode + ", cateCount=" + cateCount
                + ", cateGroup=" + cateGroup + "]";
    }
}
