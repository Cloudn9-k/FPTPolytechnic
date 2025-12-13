package vn.poly.ph012345.controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vn.poly.ph012345.entity.DonHang;
import vn.poly.ph012345.entity.GetDonHangDto;
import vn.poly.ph012345.entity.PostDonHangDto;
import vn.poly.ph012345.entity.PutDonHangDto;
import vn.poly.ph012345.service.DonHangService;

import java.util.List;

@RestController
@RequestMapping("/api/donhang")
public class DonHangController {
    @Autowired
    private DonHangService donHangService;

    @GetMapping
    public List<GetDonHangDto> getAllDonHang() {
        return donHangService.getAllDonHang();
    }
    @PostMapping
    public ResponseEntity<DonHang> createDonHang(@Valid @RequestBody PostDonHangDto dto) {
        DonHang dh = donHangService.createDonHang(dto);
        return ResponseEntity.ok().body(dh);
    }
    @PutMapping("/{id}")
    public ResponseEntity<?> updateDonHang(@PathVariable int id, @Valid @RequestBody PutDonHangDto dto) {
        DonHang update = donHangService.updateDonHang(id, dto);
        if (update == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(update);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteDonHang(@PathVariable int id) {
        boolean deleted = donHangService.deleteDonHang(id);
        if (!deleted) {
            return ResponseEntity
                    .status(404)
                    .body("Not Found");
        }
        return ResponseEntity.ok().build();
    }
    @GetMapping("/page")
    public ResponseEntity<?> getDonHangPage(@RequestParam(defaultValue = "0") int page) {
        return ResponseEntity.ok(donHangService.getDonHangDtoPage(page));
    }
}
