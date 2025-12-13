package vn.poly.ph012345.entity;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PutDonHangDto {
    @NotBlank(message = "Tổng tiền không được để trống")
    private double tongTien;
    private String diaChiGiao;
    private String dienThoaiGiao;
    private String ghiChu;
    private Boolean trangThai;
    private Integer khachHangId;
}
