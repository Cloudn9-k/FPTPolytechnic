package com.example.demo.request;

import com.example.demo.entity.DanhMuc;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class SanPhamRequest {
    @NotBlank(message = "ten sp k dc trong")
    private String tenSanPham;
    @NotBlank(message = "don gia k dc trong")
    private Float donGia;
    @NotBlank(message = "so luong k dc trong")
    private Integer soLuong;
    @NotNull(message = "danh muc k dc trong")
    private DanhMuc danhMuc;
}
