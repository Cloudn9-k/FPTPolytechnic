package com.example.buoi11_resttemplateapi.service;

import com.example.buoi11_resttemplateapi.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Service
public class StudentService {
    @Autowired
    // sử dụng rest template thì cần g
    private RestTemplate restTemplate;

    public Map<String, Student> getAllStudent() {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student.json";
        var students = restTemplate.getForObject(url, StudentMap.class);
        return students != null ? students : new HashMap<>();
    }

    public Student getByKey(String key) {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/" + key + ".json";
        return restTemplate.getForObject(url, Student.class);
    }

    public String create(Student student) {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student.json";
        var response = restTemplate.postForObject(url, student, StudentMap.class);
        if (response != null && response.containsKey("name")) {
            return response.get("name").toString();
        }
        return null;
    }

    public void update(Student student, String key) {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/" + key + ".json";
        restTemplate.put(url, student);
    }

    public void delete(String key) {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/" + key + ".json";
        restTemplate.delete(url);
    }
}