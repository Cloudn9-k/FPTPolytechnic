package vn.poly.ph012345.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.poly.ph012345.entity.DonHang;

@Repository
public interface DonHangRepository extends JpaRepository<DonHang, Integer> {
}
