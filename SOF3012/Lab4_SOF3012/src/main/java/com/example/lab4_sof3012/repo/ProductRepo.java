package com.example.lab4_sof3012.repo; // Hoặc com.example.buoi4_sof3012.repo

import com.example.lab4_sof3012.module.Product;
import com.example.lab4_sof3012.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class ProductRepo {
    public List<Product> findAll() {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product ", Product.class);
        List<Product> list = query.getResultList();
        return list;
    }
}