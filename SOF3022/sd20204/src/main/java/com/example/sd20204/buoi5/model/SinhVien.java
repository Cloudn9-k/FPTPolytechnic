package com.example.sd20204.buoi5.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SinhVien {
    private String id;
    private String ten;
    private Float diem;
    private Boolean gioiTinh;
}
