package com.example.demo.Models;

public class ProductsModel {
    private int quantity, id;
    private String name, category, manufacturer, description;
    private double price;

    public ProductsModel() {
    }

    public ProductsModel(int id, String manufacturer, String name, int quantity, double price, String category, String description) {
        this.quantity = quantity;
        this.id = id;
        this.name = name;
        this.category = category;
        this.manufacturer = manufacturer;
        this.description = description;
        this.price = price;
    }

    public ProductsModel(int id, String manufacturer, String category, String name, int quantity, double price) {
        this.quantity = quantity;
        this.id = id;
        this.name = name;
        this.category = category;
        this.manufacturer = manufacturer;
        this.price = price;
    }


    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
