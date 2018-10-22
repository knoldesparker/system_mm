package com.example.demo.Models;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderModel {
    private int orderId, customerId;
    private String date;

    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public OrderModel() {
    }

    public OrderModel(int orderId, int customerId, Date date) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.date = dateFormat.format(date);
        this.dateFormat = dateFormat;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public DateFormat getDateFormat() {
        return dateFormat;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }
}
