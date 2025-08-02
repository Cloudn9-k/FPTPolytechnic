package com.example.tongankhang_th03591_sof3012_asm1.repository;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Gym_Member;
import com.example.tongankhang_th03591_sof3012_asm1.until.HibernateUntil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class Gym_MemberRepo {
    public List<Gym_Member> getAllSubscribers() {
        Session session = null;
        List<Gym_Member> HoiVien = null;
        try {
            session = HibernateUntil.getSession();
            Query<Gym_Member> query = session.createQuery("from Gym_Member", Gym_Member.class);
            HoiVien = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return HoiVien;
    }
    public Gym_Member findById(Integer id) {
        Session session = HibernateUntil.getSession();
        Gym_Member HoiVien = null;
        try {
            HoiVien = session.get(Gym_Member.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return HoiVien;
    }

    public List<Gym_Member> findActiveMembers() {
        Session session = HibernateUntil.getSession();
        List<Gym_Member> activeMembers = null;
        try {
            Query<Gym_Member> query = session.createQuery("FROM Gym_Member WHERE status = 'Active'", Gym_Member.class);
            activeMembers = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return activeMembers;
    }

    public List<Object[]> findTopAttendanceMembers(int limit) {
        Session session = HibernateUntil.getSession();
        List<Object[]> topMembers = null;
        try {
            Query<Object[]> query = session.createQuery(
                    "SELECT gm.memberCode, gm.fullName, COUNT(cr.id) AS attendanceCount " +
                            "FROM Class_Registration cr JOIN cr.member gm " +
                            "WHERE cr.attendanceStatus = 'Attended' " +
                            "GROUP BY gm.memberCode, gm.fullName " +
                            "ORDER BY attendanceCount DESC", Object[].class);
            query.setMaxResults(limit);
            topMembers = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return topMembers;
    }
}
