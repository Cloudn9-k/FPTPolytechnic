package com.example.lab7.servlet;

import com.example.lab7.AuthFilter;
import com.example.lab7.dao.impl.UserIMPL;
import com.example.lab7.entity.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/Views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        String securityUri = (String) session.getAttribute(AuthFilter.SECURITY_URI);

        // Validate dữ liệu đầu vào
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("message", "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!");
            req.getRequestDispatcher("/Views/login.jsp").forward(req, resp);
            return;
        }

        UserIMPL dao = new UserIMPL();
        Users user = dao.findById(username);

        if (user == null || !user.getPassword().equals(password)) {
            req.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không chính xác!");
            req.getRequestDispatcher("/Views/login.jsp").forward(req, resp);
            return;
        }

        // Kiểm tra phân quyền: Nếu cố gắng truy cập trang admin bằng tài khoản user
        if (securityUri != null && securityUri.contains("/admin/") && !user.getIsAdmin()) {
            req.setAttribute("message", "Chỉ tài khoản Admin mới có thể truy cập trang này!");
            req.getRequestDispatcher("/Views/login.jsp").forward(req, resp);
            return;
        }

        // Đăng nhập thành công, lưu session và chuyển tiếp đến trang success
        session.setAttribute("user", user);
        session.removeAttribute(AuthFilter.SECURITY_URI);

        req.getRequestDispatcher("/Views/success.jsp").forward(req, resp);
    }
}
