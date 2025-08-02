package com.example.tongankhang_th03591_sof3012_asm1.repository;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Trainer;
import com.example.tongankhang_th03591_sof3012_asm1.until.HibernateUntil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class TrainerRepo {
    public List<Trainer> getAllSubscribers() {
        Session session = null;
        List<Trainer> HLV = null;
        try {
            session = HibernateUntil.getSession();
            Query<Trainer> query = session.createQuery("from Trainer", Trainer.class);
            HLV = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return HLV;
    }
    public List<Trainer> findAll() {
        Session session = HibernateUntil.getSession();
        List<Trainer> trainers = null;
        try {
            Query<Trainer> query = session.createQuery("FROM Trainer", Trainer.class);
            trainers = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return trainers;
    }
}
