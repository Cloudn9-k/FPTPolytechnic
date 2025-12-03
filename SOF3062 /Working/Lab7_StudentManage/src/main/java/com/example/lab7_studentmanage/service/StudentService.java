package com.example.lab7_studentmanage.service;

import com.example.lab7_studentmanage.entity.Student;
import com.example.lab7_studentmanage.repository.IFStudent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service // Bắt buộc phải có
public class StudentService {

    @Autowired
    IFStudent studentRepository;

    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    public Student findById(String id) {
        return studentRepository.findById(id).orElse(null);
    }

    public Student create(Student student) {
        return studentRepository.save(student);
    }

    public Student update(Student student) {
        // save trong JPA: nếu ID có rồi thì là Update, chưa có là Insert
        return studentRepository.save(student);
    }

    public void delete(String id) {
        studentRepository.deleteById(id);
    }
}