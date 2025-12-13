package vn.poly.ph012345.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
@Table(name = "don_hang")
public class DonHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "ma_don_hang")
    private String maDonHang;
    @Column(name="ngay_dat")
    private LocalDate ngayDat;
    @Column(name = "tong_tien")
    private Double tongTien;
    @Column(name = "dia_chi_giao")
    private String diaChi;
    @Column(name = "so_dien_thoai_giao")
    private String soDienThoaiGiao;
    @Column(name = "ghi_chu")
    private String ghiChu;
    @Column(name = "trang_thai")
    private Boolean trangThai;
    @Column(name="nguoi_xu_ly")
    private String nguoiXuLy;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "khach_hang_id", nullable = false)
    @JsonIgnoreProperties({"hibernateLazyInitializer","handler"})// cần chuyển sang kiểu json, nếu không chuyển sang thì bảng sẽ không hiển thị
    private KhachHang khachHang;
}
