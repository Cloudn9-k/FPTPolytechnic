package com.example.repo;

import com.example.module.Product;
import com.example.utils.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;
import java.util.Collections;
import java.util.List;

public class ProductRepo {

    public static List<Product> findAll() {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product",Product.class);
        List<Product> products = query.getResultList();
        session.close();
        return products;
    }
    public static List<Product> getAllDrinkbyCategory() {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product p Where p.category like :category",Product.class);
        query.setParameter("category","Đồ Uống");
        List<Product> products = query.getResultList();
        session.close();
        return products;
    }
    public static List<Product> getAllQuantityInStock() {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product p Where p.quantityInStock<500",Product.class);
        List<Product> products = query.getResultList();
        session.close();
        return products;
    }

    public static List<Product> getAllProductExpireDate() {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product p Order by p.expiryDate ASC",Product.class);
        List<Product> products = query.getResultList();
        session.close();
        return products;
    }

    public static List<Product> getAllProductbyKeyword(String keyword) {
        Session session = Hibernate.getSession();
        Query<Product> query = session.createQuery("from Product p Where p.name like :keyword or p.description like :keyword",Product.class);
        query.setParameter("keyword","%"+keyword+"%");
        List<Product> products = query.getResultList();
        session.close();
        return products;
    }
}
