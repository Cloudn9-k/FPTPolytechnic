package com.example.lab3_2.repo;

import com.example.lab3_2.module.TalentPet;
import com.example.lab3_2.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class TalentPetRepo {
    public List<TalentPet> findAll() {
        Session session = Hibernate.getSession();
        Query<TalentPet> query = session.createQuery("from TalentPet ", TalentPet.class);
        List<TalentPet> list = query.getResultList();
        return list;
    }
}
