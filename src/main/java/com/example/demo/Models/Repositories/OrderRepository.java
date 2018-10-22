package com.example.demo.Models.Repositories;
import com.example.demo.Models.OrderModel;
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
        sql= "SELECT * FROM orders";
        SqlRowSet rs =jdbc.queryForRowSet(sql);

        while (rs.next()) {
            orders.add(new OrderModel
                    (rs.getInt(1),rs.getInt(2),rs.getDate(3)));
        }
        return orders;
    }


}
