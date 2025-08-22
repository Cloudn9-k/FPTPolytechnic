package com.example.servlet.admin;

import com.example.entity.User;
import com.example.repository.UserRepository;
import com.example.util.PasswordUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin/login")
public class AdminLoginServlet extends HttpServlet {
    private UserRepository userRepo = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userRepo.findByEmail(email);

        // Sửa: Mã hóa mật khẩu người dùng nhập vào để so sánh với mật khẩu đã mã hóa trong DB
        String hashedPassword = PasswordUtil.hashPassword(password);

        if (user != null && user.getRole().equals("ADMIN") && hashedPassword.equals(user.getPassword())) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect(req.getContextPath() + "/admin/borrow-requests");
        } else {
            req.setAttribute("error", "Email hoặc mật khẩu không đúng.");
            req.getRequestDispatcher("/admin/login.jsp").forward(req, resp);
        }
    }
}