package com.example.entity;
import java.util.List;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "loai_sp")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class LoaiSp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @OneToMany(mappedBy = "loaiSp")
    private List<SanPham> sanPhams;
}