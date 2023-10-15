package com.beans_mall.vo;

public class ProductVO {
    private String id;
    private String name;
    private double price;

    public ProductVO(String id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    // Getter 및 Setter 메서드

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
