package com.example.helloworldsof3012;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class ProductRepo {
    public List<Product> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<Product> query = ss.createQuery("from Product", Product.class);
        List<Product> danhSach = query.getResultList();
        return danhSach;
    }
}
