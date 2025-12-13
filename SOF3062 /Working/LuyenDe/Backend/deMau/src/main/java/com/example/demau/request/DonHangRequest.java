package com.example.demau.request;

import com.example.demau.entity.KhachHang;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

public class DonHangRequest {
    private Integer id;
    @NotBlank(message = "don hang id k dc de trong")
    private String donHangId;
    @NotBlank(message = "ngay dat k dc trong")
    private String ngayDat;
    @NotBlank(message = "tong tien k dc trong")
    @Min(value = 0,message = "tong tien k dc be hon 0")
    private Float tongTien;
    private KhachHang khachHang;
}
