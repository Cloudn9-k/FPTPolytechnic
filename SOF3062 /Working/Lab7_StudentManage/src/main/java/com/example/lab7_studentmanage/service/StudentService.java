package com.example.lab7_studentmanage.service;

import com.example.lab7_studentmanage.entity.Student;
import com.example.lab7_studentmanage.repository.IFStudent;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

// chúng ta dang giả lập vì không có thời gian tương tác với cơ sở dữ liệu. tạo ra 1 DB giả lập
public class StudentService implements IFStudent {
    Map<String, Student> db = new HashMap<>(Map.of(
       "SV01",new Student("SV1","Sinh viên 01",true,9.1),
        "SV02",new Student("SV2","Sinh viên 02",true,8.2),
        "SV03",new Student("SV3","Sinh viên 03",true,7.3),
        "SV04",new Student("SV4","Sinh viên 04",true,6.3),
        "SV05",new Student("SV5","Sinh viên 05",true,5.4)
        ));
    @Override
    public Collection<Student>findAll() {
        return db.values();
    }
    @Override
    public Student findById(String id) {
        return db.get(id);
    }
    @Override
    public Student create(Student student) {
        return db.put(student.getId(), student);
    }
    @Override
    public Student update(Student student) {
        return db.put(student.getId(), student);
    }
    @Override
    public void delete(String id) {
        db.remove(id);
    }
}
