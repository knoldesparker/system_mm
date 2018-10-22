package com.example.demo.Models.Repositories;
import com.example.demo.Models.OrderModel;
import com.example.demo.Models.OrderProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class OrderRepository {

    @Autowired
    private JdbcTemplate jdbc = new JdbcTemplate();
    private String sql;

    public List<OrderModel> getOrders() {
        List<OrderModel> orders = new ArrayList<>();
        sql= "SELECT * FROM order_list";
        SqlRowSet rs =jdbc.queryForRowSet(sql);

        while (rs.next()) {
            orders.add(new OrderModel
                    (rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getDate(4)));
        }
        return orders;

    }
    public OrderProductModel getOrderById(int id) {
        String sqlQuery = "SELECT * FROM order_details WHERE order_id = " + id + ";";
        SqlRowSet rowSet = jdbc.queryForRowSet(sqlQuery);

        rowSet.next();
        OrderProductModel orderModel = new OrderProductModel(rowSet.getInt(1), rowSet.getInt(2), rowSet.getString(3),
                rowSet.getString(4),rowSet.getString(5), rowSet.getString(6), rowSet.getString(7),rowSet.getString(8),
                rowSet.getString(9), rowSet.getString(10),rowSet.getInt(11),rowSet.getString(12),
                rowSet.getString(13),rowSet.getDouble(14), rowSet.getInt(15));
        return orderModel;
    }


}
