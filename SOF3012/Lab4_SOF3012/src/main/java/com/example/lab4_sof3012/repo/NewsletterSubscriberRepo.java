package com.example.lab4_sof3012.repo; // Hoặc com.example.buoi4_sof3012.repo

import com.example.lab4_sof3012.module.NewsletterSubscriber; // Đảm bảo đúng package model
import com.example.lab4_sof3012.utils.Hibernate; // Đảm bảo đúng package utils
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class NewsletterSubscriberRepo {
    public List<NewsletterSubscriber> findAll() {
        Session session = Hibernate.getSession();
        Query<NewsletterSubscriber> query = session.createQuery("from NewsletterSubscriber ", NewsletterSubscriber.class);
        List<NewsletterSubscriber> list = query.getResultList();
        return list;
    }
}