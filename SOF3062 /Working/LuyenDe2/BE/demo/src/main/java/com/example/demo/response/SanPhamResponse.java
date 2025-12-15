package com.example.demo.response;

import com.example.demo.entity.SanPham;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class SanPhamResponse {
    private Integer id;
    private String tenSanPham;
    private BigDecimal donGia;
    private Integer soLuong;
    private String tenDanhMuc;

    public SanPhamResponse(SanPham sp) {
        this.id = sp.getId();
        this.tenSanPham = sp.getTenSanPham();
        this.donGia = sp.getDonGia();
        this.soLuong = sp.getSoLuong();
            this.tenDanhMuc = sp.getDanhMuc().getTenDanhMuc();

    }
}