package com.example.lab7_1.servlet;

import com.example.lab7_1.entity.Employee;
import com.example.lab7_1.entity.RestIO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/ajax1")
public class AjaxServlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Employee emp = new Employee("TeoNV", "Nguyễn Văn Tèo", true, 950.5);
        RestIO.writeObject(resp, emp);
    }
}
