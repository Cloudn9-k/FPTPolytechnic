package com.example.sd20204.buoi10.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "san_pham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotBlank(message = "tên không được để trống")
    @Column(name = "ten")
    private String ten;
    @NotNull(message = "Gia khong dc de trong")
    @Range(min = 0, max = 10,message = "gia phai nam trong khoang tu 0 - 10")
    @Column(name = "gia")
    private Float gia;
    @NotNull(message = "bao hanh ko dc de trong")
    @Column(name = "con_bao_hanh")
    private Boolean conBaoHanh;
    @NotNull(message = "vui long chon danh muc")
    @ManyToOne
    @JoinColumn(name = "id_danh_muc",referencedColumnName = "id")
    private DanhMuc danhMuc;
}
