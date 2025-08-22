package com.example.entity;

import java.util.List;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "chu_nha")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class ChuNha {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "ten")
    private String ten;
    @Column(name = "dia_chi")
    private String diaChi;
    @Column(name = "so_dien_thoai")
    private String soDienThoai;
    @Column(name = "email")
    private String email;
    @OneToMany(mappedBy = "chuNha")
    private List<Nha> nhas;
}