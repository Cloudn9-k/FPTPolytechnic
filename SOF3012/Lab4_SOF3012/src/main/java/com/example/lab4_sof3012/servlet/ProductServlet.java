package com.example.lab4_sof3012.servlet;

import com.example.lab4_sof3012.module.Product;
import com.example.lab4_sof3012.repo.ProductRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    private final ProductRepo repo = new ProductRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = repo.findAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/views/product.jsp").forward(request, response);
    }
}