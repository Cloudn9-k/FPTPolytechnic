package vn.poly.ph012345.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class GetDonHangDto {
    private int id;
    private String maDonHang;
    private LocalDate ngayDat;
    private double tongTien;
    private Boolean trangThai;
    private String tenKhachHang;
    private String diaChi;
}
