package com.example.tongankhang_th03591_sof3012_asm1.servlet;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Class;
import com.example.tongankhang_th03591_sof3012_asm1.repository.ClassRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/classes/available")
public class ClassesAvailableSv5 extends HttpServlet {
    private final ClassRepo classRepo = new ClassRepo(); // Sử dụng ClassRepo của bạn

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Class> availableClasses = classRepo.findAvailableClasses();
        request.setAttribute("availableClasses", availableClasses);
        request.getRequestDispatcher("/View/available_classes.jsp").forward(request, response);
    }
}
