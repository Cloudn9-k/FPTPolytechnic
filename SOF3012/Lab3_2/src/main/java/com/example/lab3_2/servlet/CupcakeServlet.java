package com.example.lab3_2.servlet;

import com.example.lab3_2.module.Cupcake;
import com.example.lab3_2.repo.CupcakeRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/cupcakes")
public class CupcakeServlet extends HttpServlet {
    private CupcakeRepo cupcakeRepository;

    @Override
    public void init() throws ServletException {
        super.init();
        cupcakeRepository = new CupcakeRepo(); // Khởi tạo repository
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Cupcake> cupcakes = cupcakeRepository.findAll();
        request.setAttribute("cupcakes", cupcakes);
        request.getRequestDispatcher("/WEB-INF/cupcakes.jsp").forward(request, response);
    }
}

