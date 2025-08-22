package com.example.servlet;

import com.example.module.Books;
import com.example.repo.BookRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/books/coming-due")
public class GetAllComingDue extends HttpServlet {
    private final BookRepo bookRepo = new BookRepo();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Books> books = bookRepo.getBooksReturnDate();
        req.setAttribute("books",  books);
        req.getRequestDispatcher("/views/book.jsp").forward(req,resp);
    }
}
