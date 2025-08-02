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

@WebServlet("/classes/by-category?category=Yoga")
public class ClassesByCategorySv4 extends HttpServlet {
    private final ClassRepo classRepo = new ClassRepo(); // Sử dụng GymClassRepo

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        List<Class> classes = null;
        if (category != null && !category.trim().isEmpty()) {
            classes = classRepo.findByCategory(category);
        }
        request.setAttribute("category", category);
        request.setAttribute("classes", classes);
        request.getRequestDispatcher("/View/class_by_category.jsp").forward(request, response);
    }
}
