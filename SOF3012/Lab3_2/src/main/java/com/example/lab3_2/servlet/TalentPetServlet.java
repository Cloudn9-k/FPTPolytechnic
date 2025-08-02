package com.example.lab3_2.servlet;

import com.example.lab3_2.module.TalentPet;
import com.example.lab3_2.repo.TalentPetRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/talentpets")
public class TalentPetServlet extends HttpServlet {
    private TalentPetRepo talentPetRepository;

    @Override
    public void init() throws ServletException {
        super.init();
        talentPetRepository = new TalentPetRepo();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TalentPet> pets = talentPetRepository.findAll();
        request.setAttribute("pets", pets);
        request.getRequestDispatcher("/WEB-INF/talentpets.jsp").forward(request, response);
    }
}