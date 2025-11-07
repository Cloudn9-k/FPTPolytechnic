package com.example.tutorsof3022.luyentap1.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name = "MonHoc")
public class MonHoc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ten_mon")
    private String tenMon;
    @Column(name = "so_tin_chi")
    private Integer soTinChi;
    @ManyToOne
    @JoinColumn(name = "id_sinh_vien", referencedColumnName = "id")
    private SinhVien sinhVien;
}
