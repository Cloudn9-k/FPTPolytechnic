package com.example.lab4_sof3012.servlet;

import com.example.lab4_sof3012.module.SimpleUser;
import com.example.lab4_sof3012.repo.SimpleUserRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet("/simple-user")
public class SimpleUserServlet extends HttpServlet {
    private final SimpleUserRepo repo = new SimpleUserRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SimpleUser> users = repo.findAll();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/views/simple-user.jsp").forward(request, response);
    }
}