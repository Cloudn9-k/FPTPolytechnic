package com.example.lab7.dao.impl;

import com.example.lab7.dao.UserDao;

import com.example.lab7.entity.Users;
import com.example.lab7.until.HibernateUntil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserIMPL implements UserDao {

    @Override
    public Users findById(String username) {
        Session session = HibernateUntil.getSession();
        Users user = null;
        try {
            Query<Users> query = session.createQuery("from Users u where u.username = :username", Users.class);
            query.setParameter("username", username);
            user = query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
}
