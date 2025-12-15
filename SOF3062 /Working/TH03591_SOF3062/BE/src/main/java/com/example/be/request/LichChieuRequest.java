package com.example.be.request;

import com.example.be.entity.Phim;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class LichChieuRequest {
    private Integer id;
    @NotBlank(message = "ngay chieu k dc null")
    private String ngayChieu;
    @NotBlank(message = "phong chieu k dc null")
    private String phongChieu;
    private Float giaVe;
    @NotNull(message = "k dc null")
    private Phim phim;
}
