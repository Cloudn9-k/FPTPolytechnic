package com.example.repo;

import com.example.module.StudentAttendance;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class StudentAtRepo {
    public static List<StudentAttendance> findAll() {
        Session session = Hibernate.getSession();
        Query<StudentAttendance> query = session.createQuery("from StudentAttendance",StudentAttendance.class);
        List<StudentAttendance> st = query.getResultList();
        session.close();
        return st;
    }
}
