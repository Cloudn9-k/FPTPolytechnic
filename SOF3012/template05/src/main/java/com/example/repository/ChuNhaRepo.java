package com.example.repository;

import com.example.entity.ChuNha;
import com.example.entity.Nha;
import com.example.util.Hibernate;
import org.hibernate.Session;

import java.util.List;

public class ChuNhaRepo {
   public List<ChuNha> getAll(){
       try(Session session = Hibernate.getFactory().openSession()){
           return session.createQuery("from ChuNha").list();
       }
   }
}
