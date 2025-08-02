package com.example.buoi4_sof3012.repo;

import com.example.buoi4_sof3012.model.NhanVien;
import com.example.buoi4_sof3012.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class NhanVienRepo {
    public List<NhanVien> findAll(){
       Session session = Hibernate.getSession();
       Query<NhanVien> query = session.createQuery("from NhanVien", NhanVien.class);
       List<NhanVien> list = query.getResultList();
       return list;
    }

}
