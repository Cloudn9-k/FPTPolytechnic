package com.example.helloworldsof3012;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class SimpleUserRepo {
    public List<SimpleUser> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<SimpleUser> query = ss.createQuery("from SimpleUser", SimpleUser.class);
        List<SimpleUser> danhSach = query.getResultList();
        return danhSach;
    }
}
