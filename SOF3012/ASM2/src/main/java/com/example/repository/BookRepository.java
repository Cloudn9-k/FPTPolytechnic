package com.example.repository;

import com.example.entity.Book;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import java.util.List;

public class BookRepository {

    public List<Book> findAll(int page, int pageSize) {
        try (Session session = Hibernate.getFactory().openSession()) {
            Query<Book> query = session.createQuery("FROM Book", Book.class);
            query.setFirstResult((page - 1) * pageSize);
            query.setMaxResults(pageSize);
            return query.list();
        }
    }

    public Long getTotalCount() {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.createQuery("SELECT COUNT(b) FROM Book b", Long.class).getSingleResult();
        }
    }

    public List<Book> findByTitleOrAuthor(String keyword) {
        try (Session session = Hibernate.getFactory().openSession()) {
            Query<Book> query = session.createQuery("FROM Book WHERE title LIKE :keyword OR author LIKE :keyword", Book.class);
            query.setParameter("keyword", "%" + keyword + "%");
            return query.list();
        }
    }

    public Book findById(Integer id) {
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.find(Book.class, id);
        }
    }

    public void save(Book book) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(book);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void delete(Book book) {
        Transaction transaction = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.remove(book);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
