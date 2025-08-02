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
@WebServlet("/members/active")
public class MembersActiveSv2 extends HttpServlet {
    private final Gym_MemberRepo gymMemberRepo = new Gym_MemberRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Gym_Member> activeMembers = gymMemberRepo.findActiveMembers();
        request.setAttribute("activeMembers", activeMembers);
        request.getRequestDispatcher("/View/members_active.jsp").forward(request, response);
    }
}
