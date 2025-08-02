package com.example.tongankhang_th03591_sof3012_asm1.servlet;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Gym_Member;
import com.example.tongankhang_th03591_sof3012_asm1.repository.Gym_MemberRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/members/detail")
public class MembersDetailSv6 extends HttpServlet {
    private final Gym_MemberRepo gymMemberRepo = new Gym_MemberRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer memberId = null;
        try {
            memberId = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "ID hội viên không hợp lệ.");
            request.getRequestDispatcher("/View/error.jsp").forward(request, response);
            return;
        }

        Gym_Member member = gymMemberRepo.findById(memberId);
        request.setAttribute("member", member);
        request.getRequestDispatcher("/View/members_detail.jsp").forward(request, response);
    }
}
