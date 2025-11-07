package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "loai_xe")
public class LoaiXe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ma_loai_xe")
    private String maLoaiXe;
    @Column(name = "ten_loai_xe")
    private String tenLoaiXe;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "hang_san_xuat")
    private String hangSanXuat;
    @Column(name = "nam_ra_mat")
    private Integer namRaMat;

}
