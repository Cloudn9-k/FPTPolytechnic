package com.example.lab7.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({
        "/account/sign-up", "/account/change-password", "/account/edit-profile",
        "/video/list", "/video/detail/*", "/video/like/*", "/video/share/*",
        "/admin/video", "/admin/user", "/admin/like", "/admin/share"
})
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Sau khi AuthFilter đã cho phép truy cập, servlet này sẽ chuyển tiếp đến page.jsp
        // Các logic cụ thể cho từng URL có thể được thêm vào đây nếu cần.
        req.getRequestDispatcher("/Views/page.jsp").forward(req, resp);
    }
}
