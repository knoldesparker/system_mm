package com.example.demo.Models.Repositories;

import com.example.demo.Models.CustomerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CustomerRepository {

    @Autowired
    private JdbcTemplate jdbc;
    private String sql;

    public List<CustomerModel> getCustomers() {
        List<CustomerModel> customers = new ArrayList<>();
        sql= "SELECT * FROM customers";
        SqlRowSet rs =jdbc.queryForRowSet(sql);

        while (rs.next()) {
            customers.add(new CustomerModel
                    (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),
                            rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9)));
        }
        return customers;
    }
}
