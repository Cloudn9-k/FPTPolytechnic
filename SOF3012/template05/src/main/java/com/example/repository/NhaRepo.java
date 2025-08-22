package com.example.repository;

import com.example.entity.Nha;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import java.util.List;

public class NhaRepo {

    public List<Nha> getAll() {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.createQuery("FROM Nha", Nha.class).list();
        }
    }

    public Nha getById(int id) {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.find(Nha.class, id);
        }
    }

    public List<Nha> getAllSortedByMaChuNha() {
        try (Session session = Hibernate.getFactory().openSession()) {
            String hql = "SELECT n FROM Nha n JOIN n.chuNha cn ORDER BY cn.id asc";
            return session.createQuery(hql, Nha.class).list();
        }
    }

    public void add(Nha nha) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.persist(nha);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void remove(Integer id) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            Nha nha = session.find(Nha.class, id);
            if (nha != null) {
                session.remove(nha);
                transaction.commit();
            }
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}