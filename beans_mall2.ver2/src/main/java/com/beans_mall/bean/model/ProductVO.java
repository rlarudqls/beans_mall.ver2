package com.beans_mall.bean.model;

public class ProductVO {

    private final String id;
    private final String name;
    private final double price;

    private ProductVO(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.price = builder.price;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public static Builder builder(String id, String name, double price) {
        return new Builder(id, name, price);
    }

    public static class Builder {
        private final String id;
        private final String name;
        private final double price;

        public Builder(String id, String name, double price) {
            this.id = id;
            this.name = name;
            this.price = price;
        }

        public ProductVO build() {
            return new ProductVO(this);
        }
    }
}
