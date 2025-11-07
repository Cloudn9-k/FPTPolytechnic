package com.example.sd20204.buoi10.service;

import com.example.sd20204.buoi10.model.DanhMuc;
import com.example.sd20204.buoi10.repository.DanhMucRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
// demo JPa chỉ khác mỗi Repo và service, thay đổi cách chúng ta sử dụng dữ liệu.
@Service
public class DanhMucService {
    @Autowired
    DanhMucRepository danhMucRepository;

    public List<DanhMuc> getAllDanhMuc(){
        return danhMucRepository.findAll();
    }
    public DanhMuc getDanhMucbyId(Integer id){
        return danhMucRepository.findById(id).get();
        // trong file by id, khi trả về nó sẽ trả về optional,
        // trong kiểu optional sẽ truyền kiểu generic,
        // khi dạng optional lấy ra băts buộc phải sử dụng pthuc get() -> trả về Generic

    }
    public void addDanhMuc(DanhMuc danhMuc){
        danhMucRepository.save(danhMuc);
    }
    public void updateDanhMuc(DanhMuc danhMuc){
        danhMucRepository.save(danhMuc);
    }
    public void deleteDanhMuc(Integer id){
        danhMucRepository.deleteById(id);
    }
}
