package com.example.lab4_sof3012.servlet;
import com.example.lab4_sof3012.module.Contact;
import com.example.lab4_sof3012.repo.ContactRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    private final ContactRepo repo = new ContactRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contact> contacts = repo.findAll();
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/views/contact.jsp").forward(request, response);
    }
}
