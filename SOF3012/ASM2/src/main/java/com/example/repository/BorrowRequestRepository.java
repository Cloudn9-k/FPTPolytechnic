package com.example.repository;

import com.example.entity.BorrowRequest;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import java.util.List;

public class BorrowRequestRepository {

    public List<BorrowRequest> findByUserId(Integer userId) {
        try (Session session = Hibernate.getFactory().openSession()) {
            Query<BorrowRequest> query = session.createQuery("FROM BorrowRequest WHERE user.id = :userId", BorrowRequest.class);
            query.setParameter("userId", userId);
            return query.list();
        }
    }

    public List<BorrowRequest> findAll() {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.createQuery("FROM BorrowRequest", BorrowRequest.class).list();
        }
    }

    public BorrowRequest findById(Integer id) {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.find(BorrowRequest.class, id);
        }
    }

    public void save(BorrowRequest request) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(request);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}