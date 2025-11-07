package com.example.sd20204.luyentap1.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Getter
@Setter
@Table(name = "NhanVien")
public class SinhVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ho_ten")
    private String hoTen;
    @Column(name = "tuoi")
    private Integer tuoi;
    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;
}
