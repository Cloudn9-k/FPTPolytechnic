package com.example.repository;

import com.example.entity.SanPham;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class SanPhamRepo {
    public List<SanPham> getAllSanPhams(int page, int pageSize) {
        try(Session session = Hibernate.getFactory().openSession()){
            Query<SanPham> query = session.createQuery("From SanPham", SanPham.class);
            query.setFirstResult((page-1)* pageSize);
            query.setMaxResults(pageSize);
            return query.list();
        }
    }
    public Long getAllSanPhamsCount(){
        try(Session session = Hibernate.getFactory().openSession()){
            return session.createQuery("select count(*) from SanPham", Long.class).getSingleResult();
        }
    }
    public SanPham getSanPhamById(int id){
        try(Session session = Hibernate.getFactory().openSession()){
            return session.find(SanPham.class, id);
        }
    }
    public void add(SanPham sanPham){
        Transaction transaction = null;
        try(Session session = Hibernate.getFactory().openSession()){
            transaction = session.beginTransaction();
            session.persist(sanPham);
            transaction.commit();

        }catch (Exception e){
            if(transaction != null){
                transaction.rollback();
            }
        }
    }
    public void update(SanPham sanPham){
        Transaction transaction = null;
        try(Session session = Hibernate.getFactory().openSession()){
            transaction = session.beginTransaction();
            session.merge(sanPham);
            transaction.commit();

        }catch (Exception e){
            if(transaction != null){
                transaction.rollback();
            }
        }
    }
    public void delete(Integer id){
        Transaction transaction = null;
        try(Session session = Hibernate.getFactory().openSession()){
            transaction = session.beginTransaction();
            SanPham sp = session.find(SanPham.class, id);
            if(sp != null){
                session.remove(sp);
                transaction.commit();

            }
            transaction.commit();

        }catch (Exception e){
            if(transaction != null && transaction.isActive()){
                transaction.rollback();
            }
        }
    }

}
