package com.example.tongankhang_th03591_sof3012_asm1.repository;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Class;
import com.example.tongankhang_th03591_sof3012_asm1.until.HibernateUntil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class ClassRepo {
    public List<Class> getAllSubscribers() { // Có thể đổi tên thành getAllClasses cho dễ hiểu hơn
        Session session = null;
        List<Class> Lop = null;
        try {
            session = HibernateUntil.getSession();

            Query<Class> query = session.createQuery("from Class c JOIN FETCH c.trainerId", Class.class);
            Lop = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return Lop;
    }

    public Class findById(Integer id) {
        Session session = HibernateUntil.getSession();
        Class cls = null;
        try {
            Query<Class> query = session.createQuery("FROM Class c JOIN FETCH c.trainerId WHERE c.id = :id", Class.class);
            query.setParameter("id", id);
            cls = query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return cls;
    }

    public List<Class> findByCategory(String category) {
        Session session = HibernateUntil.getSession();
        List<Class> classes = null;
        try {
            // Đảm bảo JOIN FETCH trainerId để có thể truy cập thông tin trainer trong JSP
            Query<Class> query = session.createQuery("FROM Class c JOIN FETCH c.trainerId WHERE c.category = :category", Class.class);
            query.setParameter("category", category);
            classes = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return classes;
    }

    public List<Class> findAvailableClasses() {
        Session session = HibernateUntil.getSession();
        List<Class> availableClasses = new java.util.ArrayList<>();
        try {
            Query<Object[]> query = session.createQuery(
                    "SELECT c, COUNT(cr.id) FROM Class c LEFT JOIN Class_Registration cr ON c.id = cr.classObj.id " +
                            "GROUP BY c.id, c.className, c.trainerId, c.category, c.scheduleTime, c.maxParticipants", Object[].class);

            List<Object[]> results = query.getResultList();

            for (Object[] result : results) {
                Class cls = (Class) result[0];
                Long registeredCount = (Long) result[1];
                if (cls.getMaxParticipants() > registeredCount) {
                    availableClasses.add(cls);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return availableClasses;
    }

    public List<Object[]> countClassesByCategory() {
        Session session = HibernateUntil.getSession();
        List<Object[]> statistics = null;
        try {
            Query<Object[]> query = session.createQuery(
                    "SELECT c.category, COUNT(c.id) FROM Class c GROUP BY c.category", Object[].class);
            statistics = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return statistics;
    }
}