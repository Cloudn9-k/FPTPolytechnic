package com.example.demo.De1.Model;

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
@Table(name = "don_hang")
public class DonHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotNull(message = "ten khach hang k dc trong")
    @Column(name = "ten_khach_hang")
    private String tenKhachHang;
    @NotNull(message = "so luong dat k dc trong")
    @Column(name = "so_luong_dat")
    private Integer soLuongDat;
    @NotNull(message = "trang thai k dc de trong")
    @Column(name = "trang_thai")
    private Boolean trangThai;
    @NotNull(message = "vui long chon san pham")
    @ManyToOne
    @JoinColumn(name = "id_san_pham",referencedColumnName = "id")
    private SanPham sanPham;

}
