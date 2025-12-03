package com.example.lab7_studentmanage.repository;

import com.example.lab7_studentmanage.entity.Student;

import java.util.Collection;

public interface IFStudent {
    // thực tế thì nên viết phương thức kế thừa jpa, nhưng chúng ta bây giờ mới đang giả lập thôi
    Collection<Student> findAll();
    Student findById(String id);
    Student create(Student student);
    Student update(Student student);
    void delete(String id);
}
