package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "xe")
public class Xe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ma_xe")
    private String maXe;
    @Column(name = "ten_xe")
    private String tenXe;
    @Column(name = "gia")
    private Float gia;
    @Column(name = "ngay_san_xuat")
    private Date ngaySanXuat;
    @Column(name = "so_cho_ngoi")
    private Integer soChoNgoi;
    @ManyToOne
    @JoinColumn(name = "id_loai_xe", referencedColumnName = "id")
    private LoaiXe loaiXe;
}
