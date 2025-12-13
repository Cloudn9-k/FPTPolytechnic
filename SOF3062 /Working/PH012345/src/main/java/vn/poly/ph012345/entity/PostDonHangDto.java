package vn.poly.ph012345.entity;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PostDonHangDto {
    @NotBlank(message = "Mã đơn hàng không được để trống")
    private String maDonHang;
    private LocalDate ngayDat;
    private double tongTien;
    private String diaChiGiao;
    private String dienThoaiGiao;
    private String ghiChu;
    private Boolean trangThai;
    private String nguoiXuLy;
    private Integer khachHangId;
}
