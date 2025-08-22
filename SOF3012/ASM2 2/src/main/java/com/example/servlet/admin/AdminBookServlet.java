package com.example.servlet.admin;

import com.example.entity.Book;
import com.example.repository.BookRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/admin/books", "/admin/books/add", "/admin/books/update", "/admin/books/delete"})
public class AdminBookServlet extends HttpServlet {
    private BookRepository bookRepo = new BookRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageStr = req.getParameter("page");
        int page = (pageStr != null && !pageStr.isEmpty()) ? Integer.parseInt(pageStr) : 1;
        int pageSize = 5;

        List<Book> books = bookRepo.findAll(page, pageSize);
        long totalItems = bookRepo.getTotalCount();
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        req.setAttribute("books", books);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.getRequestDispatcher("/admin/books.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.endsWith("/add")) {
            addBook(req, resp);
        } else if (uri.endsWith("/update")) {
            updateBook(req, resp);
        } else if (uri.endsWith("/delete")) {
            deleteBook(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/admin/books");
        }
    }

    private void addBook(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        Integer quantity = Integer.valueOf(req.getParameter("quantity"));

        Book newBook = new Book(null, title, author, quantity);
        bookRepo.save(newBook);
        resp.sendRedirect(req.getContextPath() + "/admin/books");
    }

    private void updateBook(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        Integer quantity = Integer.valueOf(req.getParameter("quantity"));

        Book bookToUpdate = new Book(id, title, author, quantity);
        bookRepo.save(bookToUpdate);
        resp.sendRedirect(req.getContextPath() + "/admin/books");
    }

    private void deleteBook(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Book bookToDelete = bookRepo.findById(id);
        if (bookToDelete != null) {
            bookRepo.delete(bookToDelete);
        }
        resp.sendRedirect(req.getContextPath() + "/admin/books");
    }
}