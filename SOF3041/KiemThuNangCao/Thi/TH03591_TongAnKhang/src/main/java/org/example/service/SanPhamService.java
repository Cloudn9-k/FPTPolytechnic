package org.example.service;

import org.example.model.SanPham;

import java.util.ArrayList;
import java.util.List;

public class SanPhamService {
    private List<SanPham> sanPhamList = new ArrayList<>();
    public List<SanPham> getSanPhamList() {
        return sanPhamList;
    }
    public void addSanPham(SanPham newSanPham) {
        if (newSanPham == null) {
            throw new IllegalArgumentException("Sản phẩm đang null");
        }
        if (newSanPham.getMa()==null || newSanPham.getMa().isEmpty()
        || newSanPham.getTen()==null || newSanPham.getTen().isEmpty()
                || newSanPham.getDanhMuc()==null || newSanPham.getDanhMuc().isEmpty()) {
            throw new IllegalArgumentException("Các String k đc null");
        }
        if (newSanPham.getNamBaoHanh()<2000){
            throw new IllegalArgumentException("không còn nhận bảo hành");
        }
        if (newSanPham.getSoLuong()<0){
            throw new IllegalArgumentException("Số lượng ko thể âm");
        }
        if (newSanPham.getGia()<0){
            throw new IllegalArgumentException("khong free");
        }
        sanPhamList.add(newSanPham);
    }

}
