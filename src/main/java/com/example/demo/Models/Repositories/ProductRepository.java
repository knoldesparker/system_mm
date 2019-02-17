package com.example.demo.Models.Repositories;

import com.example.demo.Models.CustomerModel;
import com.example.demo.Models.ProductsModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductRepository {

    @Autowired
    private JdbcTemplate jdbc;
    private String sql;

    public List<ProductsModel> getProducts() {
        List<ProductsModel> products = new ArrayList<>();
        sql= "SELECT * FROM product_list_admin";
        SqlRowSet rs =jdbc.queryForRowSet(sql);

        while (rs.next()) {
            products.add(new ProductsModel
                    (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5)
                            ,rs.getDouble(6)));
        }
        return products;
    }
}
