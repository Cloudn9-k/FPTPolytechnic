package com.example.buoi4_sof3012.servlet;

import com.example.buoi4_sof3012.model.NhanVien;
import com.example.buoi4_sof3012.repo.NhanVienRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/with-jstl")
public class WithJstlSerVlet extends HttpServlet {
    private final NhanVienRepo repo = new NhanVienRepo();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NhanVien> nhanVien = repo.findAll();
        request.setAttribute("DSnhanVien", nhanVien);
        request.getRequestDispatcher("/views/with-jstl.jsp").forward(request, response);
        System.out.println(nhanVien);
    }
}
