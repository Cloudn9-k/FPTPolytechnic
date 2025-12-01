package com.example.buoi11_resttemplateapi.controller;

import com.example.buoi11_resttemplateapi.entity.Student;
import com.example.buoi11_resttemplateapi.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@CrossOrigin(origins ={ "http://localhost:8080" , "https://127.0.0.1:8080"})
@RestController
public class StudentRestController {
    @Autowired
    StudentService studentService;
    Map<String, Student> map = new HashMap<>();
    @GetMapping("/api/student")
    public ResponseEntity<Map<String,Student>> getAllStudents() {
        Map<String, Student> students = studentService.getAllStudent();
        return ResponseEntity.ok(students);
    }
    @GetMapping("/api/student/{key}")
    public ResponseEntity<Student> getStudent(@PathVariable String key) {
        Student student = studentService.getByKey(key);
        if (student != null) {
            return ResponseEntity.ok(student);
        }
        return ResponseEntity.notFound().build();
    }
    @PostMapping("/api/student")
    public ResponseEntity<String> createStudent(@RequestBody Student student) {
        String key = studentService.create(student);
        if (key != null) {
            return ResponseEntity
                    .status(HttpStatus.CREATED)
                    .body("create student with key" + key);

        }else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("failure to create");
        }
    }
    @PutMapping("/api/student/{key}")
    public ResponseEntity<String> updateStudent(@PathVariable String key, @RequestBody Student student) {
        try{
            studentService.update(student, key);
            return ResponseEntity.ok("update student with key" + key);
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("update student with key" + e.getMessage());
        }
    }
    @DeleteMapping("/api/update/{key}")
    public ResponseEntity<String> deleteStudent(@PathVariable String key) {
        try {
            studentService.delete(key);
            return ResponseEntity.ok("delete student with key" + key);
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("delete student with key" + e.getMessage());
        }
    }
    // đây là chúng ta viết theo kiểu chúng ta sdung @ ở mức phương thức, nên chuyển API lên đầu là đc

}
