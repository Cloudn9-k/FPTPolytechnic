package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req,resp);

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if("ptpm".equals(username) && "123456".equals(password)){
            HttpSession session = req.getSession();
            session.setAttribute("user", username);
            resp.sendRedirect(req.getContextPath() + "/san-pham/hien-thi");
        }else {
            req.setAttribute("error","tài khoản hoặc mật khẩu k đúng");
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
