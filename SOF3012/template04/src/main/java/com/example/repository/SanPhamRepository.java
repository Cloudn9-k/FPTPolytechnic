package com.example.repository;

import com.example.entity.SanPham;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class SanPhamRepository {
    public List<SanPham> getAll(){
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.createQuery("from SanPham").list();
        }
    }
    public SanPham getById(int id){
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.find(SanPham.class,id);
        }
    }
    public void add(SanPham sanPham){
        Transaction tx = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            tx = session.beginTransaction();
            session.persist(sanPham);
            tx.commit();
        }catch (Exception e){
            if(tx != null){
                tx.rollback();
            }
        }
    }
    public void save(SanPham sanPham){
        Transaction tx = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            tx = session.beginTransaction();
            session.merge(sanPham);
            tx.commit();
        }catch (Exception e){
            if(tx != null){
                tx.rollback();
            }
        }
    }
    public void delete(Integer id){
        Transaction tx = null;
        try (Session session = Hibernate.getFactory().openSession()) {
            tx = session.beginTransaction();
            SanPham sanPham = session.find(SanPham.class,id);
            if(sanPham != null){
                session.remove(sanPham);
            }
            tx.commit();
        }catch (Exception e){
            if(tx != null){
                tx.rollback();
            }
        }
    }
}