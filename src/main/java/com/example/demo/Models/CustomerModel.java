package com.example.demo.Models;

public class CustomerModel {
    private int id, orders;
    private String email, name, lastname, adress, city, zipcode;

    public CustomerModel() {
    }

    public CustomerModel(int id, String email, String name, String lastname, String adress, String city, String zipcode, int orders) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.lastname = lastname;
        this.adress = adress;
        this.city = city;
        this.zipcode = zipcode;
        this.orders = orders;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrders() {
        return orders;
    }

    public void setOrders(int orders) {
        this.orders = orders;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
}
