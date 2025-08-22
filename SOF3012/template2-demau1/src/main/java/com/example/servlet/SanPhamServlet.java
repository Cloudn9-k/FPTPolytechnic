package com.example.servlet;

import com.example.entity.LoaiSp;
import com.example.entity.SanPham;
import com.example.repository.LoaiSpRepo;
import com.example.repository.SanPhamRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet({
        "/san-pham/hien-thi",
        "/san-pham/add",
        "/san-pham/details",
        "/san-pham/delete",
        "/san-pham/update"
})
public class SanPhamServlet extends HttpServlet {
    private LoaiSpRepo loaiSpRepo = new LoaiSpRepo();
    private SanPhamRepo sanPhamRepo = new SanPhamRepo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if(uri.contains("/hien-thi")){
            hienThi(req,resp);
        } else if (uri.contains("/detail")) {
            detail(req, resp);
        }
        else if (uri.contains("/delete")) {
            delete(req, resp);
        }else {
            resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if(uri.contains("/add")){
            add(req,resp);
        }else if (uri.contains("/update")){
            update(req,resp);
        }

    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ma = req.getParameter("ma");
        String ten = req.getParameter("ten");
        String mota = req.getParameter("mota");
        String website = req.getParameter("website");
        BigDecimal giaBan = new BigDecimal(req.getParameter("giaBan"));
        Integer soLuong = Integer.valueOf(req.getParameter("soLuong"));
        Integer idLoaiSp = Integer.valueOf(req.getParameter("idLoaiSp"));
        Integer trangThai = Integer.valueOf(req.getParameter("trangThai"));

        LoaiSp loaiSp = new LoaiSp();
        loaiSp.setId(idLoaiSp);
        SanPham sanPham = new SanPham(null, ma, ten,mota, website, giaBan, soLuong,trangThai,loaiSp);
        sanPhamRepo.update(sanPham);
        resp.sendRedirect(req.getContextPath()+"/san-pham/hien-thi");
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ma = req.getParameter("ma");
        String ten = req.getParameter("ten");
        String mota = req.getParameter("mota");
        String website = req.getParameter("website");
        BigDecimal giaBan = new BigDecimal(req.getParameter("giaBan"));
        Integer soLuong = Integer.valueOf(req.getParameter("soLuong"));
        Integer idLoaiSp = Integer.valueOf(req.getParameter("idLoaiSp"));
        Integer trangThai = Integer.valueOf(req.getParameter("trangThai"));
        LoaiSp loaiSp = new LoaiSp();
        loaiSp.setId(idLoaiSp);
        SanPham sanPham = new SanPham(null, ma, ten,mota, website, giaBan, soLuong,trangThai,loaiSp);
        sanPhamRepo.add(sanPham);
        resp.sendRedirect(req.getContextPath()+"/san-pham/hien-thi");
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        sanPhamRepo.delete(id);
        resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Integer id = Integer.valueOf(req.getParameter("id"));
    SanPham sanPham =sanPhamRepo.getSanPhamById(id);
    List<LoaiSp> loaiSpList = loaiSpRepo.getAllloaiSp();

    req.setAttribute("loaiSpList",loaiSpList);
    req.setAttribute("sanPhamDetail",sanPham);
    req.getRequestDispatcher("/sanpham.jsp").forward(req,resp);
    }

    private void hienThi(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageStr = req.getParameter("page");
        int page = (pageStr != null && !pageStr.isEmpty() ? Integer.parseInt(pageStr) : 1);
        int pageSize = 5;
        Long totalItems = sanPhamRepo.getAllSanPhamsCount();
        int totalPages = (int) Math.ceil((double) totalItems/pageSize);
        List<SanPham> listSanPham =sanPhamRepo.getAllSanPhams(page, pageSize);
        List<LoaiSp> listLoaiSp= loaiSpRepo.getAllloaiSp();
        req.setAttribute("listSanPham",listSanPham);
        req.setAttribute("listLoaiSp",listLoaiSp);
        req.setAttribute("currentPages",page);
        req.setAttribute("totalPages",totalPages);
        req.getRequestDispatcher("/sanpham.jsp").forward(req,resp);
    }

}
