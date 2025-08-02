package com.example.helloworldsof3012;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class TaskRepo {
    public List<Task> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<Task> query = ss.createQuery("from Task", Task.class);
        List<Task> danhSach = query.getResultList();
        return danhSach;
    }
}
