package com.example.lab3_2.repo;

import com.example.lab3_2.module.RetroGame;
import com.example.lab3_2.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class RetroGameRepo {
    public List<RetroGame> findAll() {
        Session session = Hibernate.getSession();
        Query<RetroGame> query = session.createQuery("from RetroGame ", RetroGame.class);
        List<RetroGame> list = query.getResultList();
        return list;
    }
}
