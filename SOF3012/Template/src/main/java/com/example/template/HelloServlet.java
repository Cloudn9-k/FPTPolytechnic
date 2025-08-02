package com.example.template;

import java.io.*;
import java.util.List;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.hibernate.Session;
import org.hibernate.query.Query;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}



















//
//public class ClassRepo {
//    public List<Class> getAllSubscribers() { // Có thể đổi tên thành getAllClasses cho dễ hiểu hơn
//        Session session = null;
//        List<Class> Lop = null;
//        try {
//            session = HibernateUntil.getSession();
//
//            Query<Class> query = session.createQuery("from Class c JOIN FETCH c.trainerId", Class.class);
//            Lop = query.getResultList();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (session != null && session.isOpen()) {
//                session.close();
//            }
//        }
//        return Lop;
//    }
//
//    public Class findById(Integer id) {
//        Session session = HibernateUntil.getSession();
//        Class cls = null;
//        try {
//            Query<Class> query = session.createQuery("FROM Class c JOIN FETCH c.trainerId WHERE c.id = :id", Class.class);
//            query.setParameter("id", id);
//            cls = query.uniqueResult();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (session != null && session.isOpen()) {
//                session.close();
//            }
//        }
//        return cls;
//    }

//    public List<Class> findByCategory(String category) {
//        Session session = HibernateUntil.getSession();
//        List<Class> classes = null;
//        try {
//            // Đảm bảo JOIN FETCH trainerId để có thể truy cập thông tin trainer trong JSP
//            Query<Class> query = session.createQuery("FROM Class c JOIN FETCH c.trainerId WHERE c.category = :category", Class.class);
//            query.setParameter("category", category);
//            classes = query.getResultList();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (session != null && session.isOpen()) {
//                session.close();
//            }
//        }
//        return classes;
//    }
//
//    public List<Class> findAvailableClasses() {
//        Session session = HibernateUntil.getSession();
//        List<Class> availableClasses = new java.util.ArrayList<>();
//        try {
//            Query<Object[]> query = session.createQuery(
//                    "SELECT c, COUNT(cr.id) FROM Class c LEFT JOIN Class_Registration cr ON c.id = cr.classObj.id " +
//                            "GROUP BY c.id, c.className, c.trainerId, c.category, c.scheduleTime, c.maxParticipants", Object[].class);
//
//            List<Object[]> results = query.getResultList();
//
//            for (Object[] result : results) {
//                Class cls = (Class) result[0];
//                Long registeredCount = (Long) result[1];
//                if (cls.getMaxParticipants() > registeredCount) {
//                    availableClasses.add(cls);
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (session != null && session.isOpen()) {
//                session.close();
//            }
//        }
//        return availableClasses;
//    }
