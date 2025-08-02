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

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    private final ProductRepo productRepo = new ProductRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productRepo.findAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/views/product.jsp").forward(request, response);
    }
}
