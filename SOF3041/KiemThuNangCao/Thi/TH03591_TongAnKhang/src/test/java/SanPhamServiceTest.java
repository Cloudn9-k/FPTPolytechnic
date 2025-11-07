import org.example.model.SanPham;
import org.example.service.SanPhamService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class SanPhamServiceTest {
    protected static SanPhamService sanPhamService;
    protected static SanPham sanPham;

    @BeforeAll
    public static void setUp() {
        sanPhamService = new SanPhamService();
    }
    @AfterAll
    public static void tearDown() {
        sanPhamService = null;
    }
    @Test
    public void testSanPhamService(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP06","Khang",2025,20.5f,1,"Đẳng cấp");
        sanPhamService.addSanPham(sanPham);
        assertEquals(soLuongSP+1,sanPhamService.getSanPhamList().size());
    }
    @Test
    public void testAddSanPhamWhenMaNull(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("","Khang",2000,20.5f,1,"Đẳng cấp");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("Các String k đc null",exception.getMessage());
    }
    @Test
    public void testAddSanPhamWhenTenIsNull(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP02","",2025,20.5f,1,"Đẳng cấp");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("Các String k đc null",exception.getMessage());
    }
    @Test
    public void testAddSanPhamWhenDanhMucIsNull(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP02","khang",2025,20.5f,1,"");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("Các String k đc null",exception.getMessage());
    }
    @Test
    public void testAddSanPhamWhenNamLowerThan2000(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP02","khang",1999,20.5f,1,"d");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("không còn nhận bảo hành",exception.getMessage());
    }

    @Test
    public void testAddSanPhamWhenSoLuongLowerThan0(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP02","khang",2000,20.3f,-12,"d");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("Số lượng ko thể âm",exception.getMessage());
    }
    @Test
    public void testAddSanPhamWhenGiaLower0(){
        int soLuongSP = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("SP02","khang",2000,-1.0f,1,"d");
        Exception exception = assertThrows(IllegalArgumentException.class, () -> sanPhamService.addSanPham(sanPham));
        assertEquals("khong free",exception.getMessage());
    }
}