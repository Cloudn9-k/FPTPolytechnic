import org.example.model.SanPham;
import org.example.service.SanPhamService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class SanPhamServiceTest {
    protected static SanPham sanPham;
    protected static SanPhamService sanPhamService;
    @BeforeAll
    public static void setup(){
        sanPhamService = new SanPhamService();
    }

    @AfterAll
    public static void teardown(){
        sanPhamService = null;
    }
    @Test
    public void testThemSanPhamService(){
        long soLuongSp = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("sp01","khang",2025,25.5f,4,"da");
        sanPhamService.addSanPham(sanPham);
        assertEquals(soLuongSp+1,sanPhamService.getSanPhamList().size());
    }
    @Test
    public void testThemSanPhamMaNullService(){
        long soLuongSp = sanPhamService.getSanPhamList().size();
        sanPham = new SanPham("","khang",2025,25.5f,4,"da");
        Exception exception = assertThrows(IllegalArgumentException.class, ()->sanPhamService.addSanPham(sanPham));
        assertEquals("null string",exception.getMessage());
    }
}
