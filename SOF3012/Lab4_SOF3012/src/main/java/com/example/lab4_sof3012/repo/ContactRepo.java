package com.example.lab4_sof3012.repo; // Hoặc com.example.buoi4_sof3012.repo

import com.example.lab4_sof3012.module.Contact; // Đảm bảo đúng package model
import com.example.lab4_sof3012.utils.Hibernate; // Đảm bảo đúng package utils
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class ContactRepo {
    public List<Contact> findAll() {
        Session session = Hibernate.getSession();
        Query<Contact> query = session.createQuery("from Contact ", Contact.class);
        List<Contact> list = query.getResultList();
        return list;
    }

}