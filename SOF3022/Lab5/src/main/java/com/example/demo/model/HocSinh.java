package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "hoc_sinh")
public class HocSinh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ten_hoc_sinh")
    private String tenHocSinh;
    @Column(name = "tuoi")
    private Integer tuoi;
    @Column(name = "dang_hoc")
    private Boolean dangHoc;
    @ManyToOne
    @JoinColumn(name = "truong_id",referencedColumnName = "id")
    private TruongHoc truongHoc;
}
