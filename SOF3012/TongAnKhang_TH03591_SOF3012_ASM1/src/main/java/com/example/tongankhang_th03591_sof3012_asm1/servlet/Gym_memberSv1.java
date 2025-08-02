package com.example.tongankhang_th03591_sof3012_asm1.servlet;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Gym_Member;
import com.example.tongankhang_th03591_sof3012_asm1.repository.Gym_MemberRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/members")
public class Gym_memberSv1 extends HttpServlet {
    private final Gym_MemberRepo newGym = new Gym_MemberRepo();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Gym_Member> HoiVien = newGym.getAllSubscribers();
        req.setAttribute("members", HoiVien);
        req.getRequestDispatcher("/View/Gym_member.jsp").forward(req, resp);
        System.out.println("Members: " + HoiVien);
    }
}
