package com.example.tongankhang_th03591_sof3012_asm1.repository;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Class_Registration;
import com.example.tongankhang_th03591_sof3012_asm1.until.HibernateUntil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class Class_RegistrationRepo {
    public List<Class_Registration> getAllSubscribers() {
        Session session = null;
        List<Class_Registration> DangKy = null;
        try {
            session = HibernateUntil.getSession();
            Query<Class_Registration> query = session.createQuery("from Class_Registration", Class_Registration.class);
            DangKy = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return DangKy;
    }
    public List<Class_Registration> findByClassId(Integer classId) {
        Session session = HibernateUntil.getSession();
        List<Class_Registration> registrations = null;
        try {
            // JOIN FETCH member và classObj để tải thông tin của Gym_Member và Class cùng lúc
            Query<Class_Registration> query = session.createQuery(
                    "FROM Class_Registration cr JOIN FETCH cr.member JOIN FETCH cr.classObj WHERE cr.classObj.id = :classId", Class_Registration.class);
            query.setParameter("classId", classId);
            registrations = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return registrations;
    }

    public long countRegistrationsByClass(Integer classId) {
        Session session = HibernateUntil.getSession();
        Long count = 0L;
        try {
            Query<Long> query = session.createQuery("SELECT COUNT(cr.id) FROM Class_Registration cr WHERE cr.classObj.id = :classId", Long.class);
            query.setParameter("classId", classId);
            count = query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return count != null ? count : 0;
    }
}
