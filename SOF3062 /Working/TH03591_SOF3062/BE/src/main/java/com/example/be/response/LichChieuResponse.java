package com.example.be.response;

import com.example.be.entity.LichChieu;
import lombok.Data;

@Data
public class LichChieuResponse {
    private Integer id;
    private String ngayChieu;
    private String phongChieu;
    private Float giaVe;
    private String tenPhim;
    private String daoDien;

    public LichChieuResponse(LichChieu lichChieu) {
        this.id = lichChieu.getId();
        this.ngayChieu = lichChieu.getNgayChieu();
        this.phongChieu = lichChieu.getPhongChieu();
        this.giaVe = lichChieu.getGiaVe();
        this.tenPhim = lichChieu.getPhim().getTenPhim();
        this.daoDien = lichChieu.getPhim().getDaoDien();
    }
}
