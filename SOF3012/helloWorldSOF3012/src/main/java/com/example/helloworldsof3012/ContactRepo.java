package com.example.helloworldsof3012;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class ContactRepo {
    public List<Contact> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<Contact> query = ss.createQuery("from Contact", Contact.class);
        List<Contact> danhSach = query.getResultList();
        return danhSach;
    }
}
