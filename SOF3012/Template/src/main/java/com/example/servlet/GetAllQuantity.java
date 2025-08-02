package com.example.servlet;

import com.example.module.Product;
import com.example.repo.ProductRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/product/prepare-out-of-stock")
public class GetAllQuantity extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final ProductRepo productRepo = new ProductRepo();
        final List<Product> products = productRepo.getAllQuantityInStock();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/views/product.jsp").forward(request, response);
    }
}
