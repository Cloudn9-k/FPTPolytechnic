package com.example.servlet;

import com.example.entity.User;
import com.example.repository.UserRepository;
import com.example.util.PasswordUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private UserRepository userRepo = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User existingUser = userRepo.findByEmail(email);
        if (existingUser != null) {
            req.setAttribute("error", "Email đã tồn tại.");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        String hashedPassword = PasswordUtil.hashPassword(password);
        User newUser = new User();
        newUser.setName(name);
        newUser.setEmail(email);
        newUser.setPassword(hashedPassword);
        newUser.setRole("STUDENT");
        userRepo.save(newUser);

        req.setAttribute("success", "Đăng ký thành công! Vui lòng đăng nhập.");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}