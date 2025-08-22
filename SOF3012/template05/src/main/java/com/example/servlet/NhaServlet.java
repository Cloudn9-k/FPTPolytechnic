package com.example.servlet;

import com.example.entity.ChuNha;
import com.example.entity.Nha;
import com.example.repository.ChuNhaRepo;
import com.example.repository.NhaRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet(urlPatterns = {"/nha/hien-thi", "/nha/add", "/nha/remove"})
public class NhaServlet extends HttpServlet {

    private NhaRepo nhaRepo = new NhaRepo();
    private ChuNhaRepo chuNhaRepo = new ChuNhaRepo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        List<Nha> nhaList;
        List<ChuNha> chuNhaList = chuNhaRepo.getAll();

        if (uri.contains("/hien-thi")) {
            if (req.getParameter("sort") != null) {
                nhaList = nhaRepo.getAllSortedByMaChuNha();
            } else {
                nhaList = nhaRepo.getAll();
            }
            req.setAttribute("nhaList", nhaList);
            req.setAttribute("chuNhaList", chuNhaList);
            req.getRequestDispatcher("/nha.jsp").forward(req, resp);
        } else if (uri.contains("/remove")) {
            Integer id = Integer.valueOf(req.getParameter("id"));
            nhaRepo.remove(id);
            resp.sendRedirect(req.getContextPath() + "/nha/hien-thi");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String uri = req.getRequestURI();

        if (uri.contains("/add")) {
            String diaChi = req.getParameter("dia_chi");
            String loaiNha = req.getParameter("loai_nha");
            BigDecimal giaTien = new BigDecimal(req.getParameter("gia_tien"));
            Integer chuNhaId = Integer.valueOf(req.getParameter("chu_nha_id"));

            Nha newNha = new Nha();
            newNha.setDiaChi(diaChi);
            newNha.setLoaiNha(loaiNha);
            newNha.setGiaTien(giaTien);

            ChuNha chuNha = new ChuNha();
            chuNha.setId(chuNhaId);
            newNha.setChuNha(chuNha);

            nhaRepo.add(newNha);
            resp.sendRedirect(req.getContextPath() + "/nha/hien-thi");
        }
    }
}