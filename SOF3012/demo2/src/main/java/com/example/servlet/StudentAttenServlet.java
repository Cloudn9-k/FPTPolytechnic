package com.example.servlet;

import com.example.module.StudentAttendance;
import com.example.repo.StudentAtRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/studentat")
public class StudentAttenServlet extends HttpServlet {
    private final StudentAtRepo repo = new StudentAtRepo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<StudentAttendance> products = repo.findAll();
        req.setAttribute("students", products);
        req.getRequestDispatcher("/views/student.jsp").forward(req, resp);
    }
}
