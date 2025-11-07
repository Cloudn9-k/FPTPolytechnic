package com.example.sd20204.buoi5.service;

import com.example.sd20204.buoi5.model.SinhVien;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class SinhVienService {
    private List<SinhVien> danhSach = null;
    public SinhVienService() {
        danhSach = new ArrayList(Arrays.asList(
          new SinhVien("1", "Nguyen Van A", 5.6f, true),
          new SinhVien("2", "Nguyen Van B", 6.6f, true),
          new SinhVien("3", "Nguyen Thi C", 8.6f, false)
        ));
    }
    public List<SinhVien> getAll() {
        return danhSach;
    }

    public SinhVien getDetail(String id) {
        for(SinhVien sv: danhSach) {
            if(sv.getId().equals(id)) {
                return sv;
            }
        }
        return null;
    }

    public void addSinhVien(SinhVien sinhVien) {
        danhSach.add(sinhVien);
    }
    public void updateSinhVien(SinhVien sinhVien) {
        int updateIndex = -1;
        for(int i = 0; i < danhSach.size(); i++) {
            if(danhSach.get(i).getId().equals(sinhVien.getId())) {
                updateIndex = i;
            }
        }
        danhSach.set(updateIndex, sinhVien);
    }
    public void deleteSinhVien(String id) {
        danhSach.removeIf(sv -> sv.getId().equals(id));
    }

}
