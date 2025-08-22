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
    //get-> hieern thij form dang nhap
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println("access do post");
        String username = request.getParameter("tenTaiKhoan");
        String password = request.getParameter("matKhau");
        response.getWriter().println(username + " " + password);

        // kieemr tra thong tin dang nhap
        if (username.equals(password)) {
            response.getWriter().println("success");
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
        }else {
            response.getWriter().println("fail");
        }
    }
}
