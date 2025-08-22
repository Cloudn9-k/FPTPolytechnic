package com.example.servlet.student;

import com.example.entity.Book;
import com.example.repository.BookRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/student/books", "/student/search"})
public class BookServlet extends HttpServlet {
    private BookRepository bookRepo = new BookRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        List<Book> books;
        int pageSize = 5; // Số sách mỗi trang

        String pageStr = req.getParameter("page");
        int currentPage = (pageStr != null && !pageStr.isEmpty()) ? Integer.parseInt(pageStr) : 1;

        if (uri.endsWith("/search")) {
            String keyword = req.getParameter("keyword");
            books = bookRepo.findByTitleOrAuthor(keyword);

            req.setAttribute("books", books);
            req.setAttribute("keyword", keyword);
            req.setAttribute("currentPage", 1); // Tìm kiếm không phân trang, nên trang luôn là 1
            req.setAttribute("totalPages", 1);
        } else {
            // Lấy danh sách sách có phân trang
            books = bookRepo.findAll(currentPage, pageSize);
            long totalItems = bookRepo.getTotalCount();
            int totalPages = (int) Math.ceil((double) totalItems / pageSize);

            req.setAttribute("books", books);
            req.setAttribute("currentPage", currentPage);
            req.setAttribute("totalPages", totalPages);
        }

        req.getRequestDispatcher("/student/books.jsp").forward(req, resp);
    }
}