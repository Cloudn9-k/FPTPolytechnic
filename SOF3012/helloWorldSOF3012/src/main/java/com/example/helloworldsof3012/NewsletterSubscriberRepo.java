package com.example.helloworldsof3012;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class NewsletterSubscriberRepo {
    public List<NewsletterSubscriber> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<NewsletterSubscriber> query = ss.createQuery("from NewsletterSubscriber", NewsletterSubscriber.class);
        List<NewsletterSubscriber> danhSach = query.getResultList();
        return danhSach;
    }
}
