package com.example.buoi11_resttemplateapi.controller;

import com.example.buoi11_resttemplateapi.entity.Student;
import com.example.buoi11_resttemplateapi.repository.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin("*") // Cho phép Web Form gọi API
@RestController
@RequestMapping("/api/student")
public class StudentRestController {

    @Autowired
    StudentDao dao; // Sử dụng trực tiếp DAO [cite: 351]

    // 1. Lấy tất cả sinh viên
    @GetMapping
    public ResponseEntity<List<Student>> findAll() {
        return ResponseEntity.ok(dao.findAll()); // [cite: 383, 385]
    }

    // 2. Lấy 1 sinh viên theo ID
    @GetMapping("/students/{id}")
    public ResponseEntity<Student> findById(@PathVariable("id") String id) {
        if(!dao.existsById(id)) return ResponseEntity.notFound().build();
        return ResponseEntity.ok(dao.findById(id).get()); // [cite: 387, 389]
    }

    // 3. Thêm mới sinh viên
    @PostMapping
    public ResponseEntity<Student> create(@RequestBody Student student) {
        if(dao.existsById(student.getId())) {
            return ResponseEntity.badRequest().build(); // Trùng ID thì báo lỗi
        }
        return ResponseEntity.ok(dao.save(student)); // [cite: 391, 393]
    }

    // 4. Cập nhật sinh viên
    @PutMapping("/{id}")
    public ResponseEntity<Student> update(@PathVariable("id") String id, @RequestBody Student student) {
        if(!dao.existsById(id)) return ResponseEntity.notFound().build();
        return ResponseEntity.ok(dao.save(student)); // [cite: 396, 398]
    }

    // 5. Xóa sinh viên
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable("id") String id) {
        if(!dao.existsById(id)) return ResponseEntity.notFound().build();
        dao.deleteById(id); // [cite: 400, 403]
        return ResponseEntity.ok().build();
    }
}