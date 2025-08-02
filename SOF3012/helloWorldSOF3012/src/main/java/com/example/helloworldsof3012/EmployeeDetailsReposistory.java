package com.example.helloworldsof3012;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;
public class EmployeeDetailsReposistory {
    public List<EmployeeDetails> getAll() {
        Session ss = HibernateUtil.getSession();
        Query<EmployeeDetails> query = ss.createQuery("from EmployeeDetails", EmployeeDetails.class);
        List<EmployeeDetails> danhSach = query.getResultList();
        return danhSach;
    }
}
