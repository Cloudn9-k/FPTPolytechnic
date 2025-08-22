package com.example.entity;

import java.math.BigDecimal;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "nha")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class Nha {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "dia_chi")
    private String diaChi;

    @Column(name = "loai_nha")
    private String loaiNha;

    @Column(name = "gia_tien", precision = 18, scale = 2)
    private BigDecimal giaTien;

    @ManyToOne
    @JoinColumn(name = "chu_nha_id")
    private ChuNha chuNha;
}