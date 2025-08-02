package com.example.lab3_2.servlet;

import com.example.lab3_2.module.RetroGame;
import com.example.lab3_2.repo.RetroGameRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/retrogames")
public class RetroGameServlet extends HttpServlet {
    private RetroGameRepo retroGameRepository;

    @Override
    public void init() throws ServletException {
        super.init();
        retroGameRepository = new RetroGameRepo();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RetroGame> games = retroGameRepository.findAll();
        request.setAttribute("games", games);
        request.getRequestDispatcher("/WEB-INF/retrogames.jsp").forward(request, response);
    }
}