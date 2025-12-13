package vn.poly.ph012345.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.expression.spel.ast.OpAnd;
import org.springframework.stereotype.Service;
import vn.poly.ph012345.entity.*;
import vn.poly.ph012345.repository.DonHangRepository;
import vn.poly.ph012345.repository.KhachHangRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DonHangService {
   @Autowired
   private DonHangRepository donHangRepository;
   @Autowired
   private KhachHangRepository khachHangRepository;

   public List<GetDonHangDto> getAllDonHang() {
      return donHangRepository.findAll().stream()
              .map(donHang -> new GetDonHangDto(
                      donHang.getId(),
                      donHang.getMaDonHang(),
                      donHang.getNgayDat(),
                      donHang.getTongTien(),
                      donHang.getTrangThai(),
                      donHang.getKhachHang().getTenKhachHang(),
                      donHang.getKhachHang().getDiaChi()
              ))
              .collect(Collectors.toList());
   }
   public DonHang createDonHang(PostDonHangDto dto) {
      KhachHang kh = khachHangRepository.findById(dto.getKhachHangId())
              .orElseThrow(() -> new IllegalArgumentException("KhachHang id not found"));
      DonHang dh = new DonHang();
      dh.setMaDonHang(dto.getMaDonHang());
      dh.setNgayDat(dto.getNgayDat());
      dh.setTongTien(dto.getTongTien());
      dh.setDiaChi(kh.getDiaChi());
      dh.setSoDienThoaiGiao(kh.getSoDienThoai());
      dh.setGhiChu(dto.getGhiChu());
      dh.setTrangThai(dto.getTrangThai());
      dh.setNguoiXuLy(dto.getNguoiXuLy());
      dh.setKhachHang(kh);
      return donHangRepository.save(dh);
   }
   public DonHang updateDonHang(Integer id, PutDonHangDto dto) {
      Optional<DonHang> donHang = donHangRepository.findById(id);
      if (!donHang.isPresent()) {
         throw new IllegalArgumentException("DonHang id not found");
      }
      DonHang dh = donHang.get();
      dh.setTongTien(dto.getTongTien());
      dh.setDiaChi(dto.getDiaChiGiao());
      dh.setSoDienThoaiGiao(dto.getDienThoaiGiao());
      dh.setGhiChu(dto.getGhiChu());
      dh.setTrangThai(dto.getTrangThai());
      KhachHang kh = khachHangRepository.findById(dto.getKhachHangId())
              .orElseThrow(() -> new IllegalArgumentException("KhachHang id not found"));
      dh.setKhachHang(kh);
      return donHangRepository.save(dh);
   }
   public boolean deleteDonHang(Integer id) {
      if (!donHangRepository.existsById(id)) {
         throw new IllegalArgumentException("DonHang id not found");
      }
      donHangRepository.deleteById(id);
      return true;
   }
   public Page<GetDonHangDto> getDonHangDtoPage(int page) {
      Pageable pageable = PageRequest.of(page, 5);
      Page<DonHang> result = donHangRepository.findAll(pageable);
      return result.map(donHang -> new GetDonHangDto(
              donHang.getId(),
              donHang.getMaDonHang(),
              donHang.getNgayDat(),
              donHang.getTongTien(),
              donHang.getTrangThai(),
              donHang.getKhachHang().getTenKhachHang(),
              donHang.getKhachHang().getDiaChi()
      ));
   }
}