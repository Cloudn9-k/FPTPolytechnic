package com.example.lab4_sof3012.repo; // Hoặc com.example.buoi4_sof3012.repo

import com.example.lab4_sof3012.module.Task;
import com.example.lab4_sof3012.module.Task; // Đảm bảo đúng package model
import com.example.lab4_sof3012.utils.Hibernate; // Đảm bảo đúng package utils
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class TaskRepo {
    public List<Task> findAll() {
        Session session = Hibernate.getSession();
        Query<Task> query = session.createQuery("from Task ", Task.class);
        List<Task> list = query.getResultList();
        return list;
    }

}