package com.example.lab7_studentmanage.controller;

import com.example.lab7_studentmanage.entity.Student;
import com.example.lab7_studentmanage.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;

@CrossOrigin(origins = "http://localhost:5173/")
@org.springframework.web.bind.annotation.RestController
public class RestController {
    @Autowired
    StudentService studentService;
    @GetMapping("/students")
    public Collection<Student> findAll() {
        return studentService.findAll();
    }
    @GetMapping("/students/{id}")
    public Student findById(@PathVariable String id) {
        return studentService.findById(id);
    }
    @PostMapping("/students")
    public Student create(@RequestBody Student student) {
        return studentService.create(student);
    }
    @PutMapping("/students/{id}")
    public Student update(@PathVariable String id, @RequestBody Student student) {
        return studentService.update(student);
    }
    @DeleteMapping("/students/{id}")
    public void delete(@PathVariable String id) { // Đổi thành @PathVariable
        studentService.delete(id);
    }
}
