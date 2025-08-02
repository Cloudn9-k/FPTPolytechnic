package com.example.lab4_sof3012.repo; // Hoặc com.example.buoi4_sof3012.repo

import com.example.lab4_sof3012.module.SimpleUser; // Đảm bảo đúng package model
import com.example.lab4_sof3012.utils.Hibernate; // Đảm bảo đúng package utils
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class SimpleUserRepo {
    public List<SimpleUser> findAll() {
        Session session = Hibernate.getSession();
        Query<SimpleUser> query = session.createQuery("from SimpleUser ", SimpleUser.class);
        List<SimpleUser> list = query.getResultList();
        return list;
    }
}