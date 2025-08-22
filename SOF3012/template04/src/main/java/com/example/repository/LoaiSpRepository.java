package com.example.repository;

import com.example.entity.LoaiSp;
import com.example.util.Hibernate;
import org.hibernate.Session;
import java.util.List;

public class LoaiSpRepository {
    public List<LoaiSp> getAll(){
        try (Session session = Hibernate.getFactory().openSession()) {
            return session.createQuery("from LoaiSp").list();
        }
    }
}