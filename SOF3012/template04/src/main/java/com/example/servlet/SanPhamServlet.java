package com.example.servlet;

import com.example.entity.LoaiSp;
import com.example.entity.SanPham;
import com.example.repository.LoaiSpRepository;
import com.example.repository.SanPhamRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet(urlPatterns = {"/san-pham/hien-thi", "/san-pham/add", "/san-pham/update", "/san-pham/delete", "/san-pham/detail"})
public class SanPhamServlet extends HttpServlet {
    private SanPhamRepository sanPhamRepo = new SanPhamRepository();
    private LoaiSpRepository loaiSpRepo = new LoaiSpRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/hien-thi")) {
            List<SanPham> sanPhams = sanPhamRepo.getAll();
            req.setAttribute("sanPhams", sanPhams);
        } else if (uri.contains("/detail")) {
            Integer id = Integer.valueOf(req.getParameter("id"));
            SanPham sanPhamDetail = sanPhamRepo.getById(id);
            req.setAttribute("sanPhamDetail", sanPhamDetail);
        }
        List<LoaiSp> loaiSps = loaiSpRepo.getAll();
        req.setAttribute("loaiSps", loaiSps);
        req.getRequestDispatcher("/sanpham.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/add")) {
            themSanPham(req, resp);
        } else if (uri.contains("/update")) {
            capNhatSanPham(req, resp);
        } else if (uri.contains("/delete")) {
            xoaSanPham(req, resp);
        }
    }

    private void themSanPham(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String maSp = req.getParameter("ma");
        String tenSp = req.getParameter("ten");
        String moTa = req.getParameter("mota");
        String website = req.getParameter("website");
        BigDecimal giaBan = new BigDecimal(req.getParameter("gia_ban"));
        Integer soLuong = Integer.valueOf(req.getParameter("so_luong"));
        Integer idLoai = Integer.valueOf(req.getParameter("id_loai_sp"));
        Integer trangThai = Integer.valueOf(req.getParameter("trang_thai"));

        SanPham newSp = new SanPham();
        newSp.setMa(maSp);
        newSp.setTen(tenSp);
        newSp.setMoTa(moTa);
        newSp.setWebsite(website);
        newSp.setGiaBan(giaBan);
        newSp.setSoLuong(soLuong);
        newSp.setTrangThai(trangThai);

        LoaiSp loaiSp = new LoaiSp();
        loaiSp.setId(idLoai);
        newSp.setLoaiSp(loaiSp);

        sanPhamRepo.add(newSp);
        resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
    }

    private void capNhatSanPham(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        String maSp = req.getParameter("ma");
        String tenSp = req.getParameter("ten");
        String moTa = req.getParameter("mota");
        String website = req.getParameter("website");
        BigDecimal giaBan = new BigDecimal(req.getParameter("gia_ban"));
        Integer soLuong = Integer.valueOf(req.getParameter("so_luong"));
        Integer idLoai = Integer.valueOf(req.getParameter("id_loai_sp"));
        Integer trangThai = Integer.valueOf(req.getParameter("trang_thai"));

        SanPham updatedSp = new SanPham();
        updatedSp.setId(id);
        updatedSp.setMa(maSp);
        updatedSp.setTen(tenSp);
        updatedSp.setMoTa(moTa);
        updatedSp.setWebsite(website);
        updatedSp.setGiaBan(giaBan);
        updatedSp.setSoLuong(soLuong);
        updatedSp.setTrangThai(trangThai);

        LoaiSp loaiSp = new LoaiSp();
        loaiSp.setId(idLoai);
        updatedSp.setLoaiSp(loaiSp);

        sanPhamRepo.save(updatedSp);
        resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
    }

    private void xoaSanPham(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        sanPhamRepo.delete(id);
        resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
    }
}