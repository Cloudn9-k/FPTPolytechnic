package com.example.tutorsof3022.tutor.service;

import com.example.tutorsof3022.tutor.model.NhanVien;
import com.example.tutorsof3022.tutor.repository.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NhanVienService {
    @Autowired
    NhanVienRepository nhanVienRepository;

    public List<NhanVien> getAllNhanVien() {
        return nhanVienRepository.findAll();
    }

    public NhanVien getNhanVienById(Integer id) {
        return nhanVienRepository.findById(id).get();
    }

    public void addNhanVien(NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
    }
    public void updateNhanVien(NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
    }

    public void removeNhanVienById(Integer id) {
        nhanVienRepository.deleteById(id);
    }
}
