package vn.poly.ph012345.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ten_khach_hang", nullable = false)
    private String tenKhachHang;
    @Column(name = "dia_chi")
    private String diaChi;
    @Column(name = "so_dien_thoai")
    private String soDienThoai;
    private String email;
    @Column(name="ngay_sinh")
    private LocalDate ngaySinh;
    @Column(name="gioi_tinh")
    private Boolean gioiTinh;
    @Column(name = "diem_tich_luy")
    private Double diemTichLuy;
    @Column(name = "trang_thai")
    private Boolean trangThai;
    @Column(name = "ghi_chu")
    private String ghiChu;
}
