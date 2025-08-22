package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String user;
       HttpSession session = req.getSession();
       String username = (String) session.getAttribute("username");
       if("".equals(username)){
            user="nobody";
       }else {
           user=username;
       }
        req.setAttribute("user", user);
       req.getRequestDispatcher("/myIndex.jsp").forward(req,resp);
    }
}
