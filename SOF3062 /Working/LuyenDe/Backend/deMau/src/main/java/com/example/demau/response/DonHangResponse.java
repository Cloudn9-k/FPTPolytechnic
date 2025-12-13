package com.example.demau.response;

import com.example.demau.entity.DonHang;
import lombok.Data;

@Data
public class DonHangResponse {
    private Integer id;
    private String donHangId;
    private String ngayDat;
    private Float tongTien;
    private String tenKhachHang;
    private String diaChiGiao;

    public DonHangResponse(DonHang donHang) {
        this.id = donHang.getId();
        this.donHangId = donHang.getMaDonHang();
        this.ngayDat = donHang.getNgayDat();
        this.tongTien = donHang.getTongTien();
        this.tenKhachHang = donHang.getKhachHang().getTenKhachHang();
        this.diaChiGiao = donHang.getKhachHang().getDiaChi();
    }

}
