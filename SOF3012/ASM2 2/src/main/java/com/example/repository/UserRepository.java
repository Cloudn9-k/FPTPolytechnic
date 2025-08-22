package com.example.repository;

import com.example.entity.User;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class UserRepository {

    public User findByEmail(String email) {
        try (Session session = Hibernate.getFactory().openSession()) {
            Query<User> query = session.createQuery("FROM User WHERE email = :email", User.class);
            query.setParameter("email", email);
            return query.uniqueResult();
        }
    }

    public void save(User user) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}