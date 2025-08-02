package com.example.lab3_2.repo;
import com.example.lab3_2.module.Cupcake;
import com.example.lab3_2.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class CupcakeRepo {
    public List<Cupcake> findAll() {
        Session session = Hibernate.getSession();
        Query<Cupcake> query = session.createQuery("from Cupcake ", Cupcake.class);
        List<Cupcake> list = query.getResultList();
        return list;
    }
}
