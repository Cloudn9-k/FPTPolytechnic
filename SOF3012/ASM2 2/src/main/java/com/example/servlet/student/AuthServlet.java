package com.example.servlet.student;

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

@WebServlet({"/login", "/logout"})
public class AuthServlet extends HttpServlet {
    private UserRepository userRepo = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.endsWith("/logout")) {
            HttpSession session = req.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            resp.sendRedirect(req.getContextPath() + "/login");
        } else {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userRepo.findByEmail(email);

        // Sửa: Mã hóa mật khẩu người dùng nhập vào để so sánh với mật khẩu đã mã hóa trong DB
        String hashedPassword = PasswordUtil.hashPassword(password);

        if (user != null && user.getRole().equals("STUDENT") && hashedPassword.equals(user.getPassword())) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect(req.getContextPath() + "/student/books");
        } else {
            req.setAttribute("error", "Email hoặc mật khẩu không đúng.");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}