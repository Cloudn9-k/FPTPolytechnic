package com.example.servlet.admin;

import com.example.entity.Book;
import com.example.entity.BorrowRequest;
import com.example.repository.BookRepository;
import com.example.repository.BorrowRequestRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/admin/borrow-requests", "/admin/approve", "/admin/reject"})
public class AdminBorrowServlet extends HttpServlet {
    private BorrowRequestRepository borrowRepo = new BorrowRequestRepository();
    private BookRepository bookRepo = new BookRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.endsWith("/borrow-requests")) {
            List<BorrowRequest> requests = borrowRepo.findAll();
            req.setAttribute("requests", requests);
            req.getRequestDispatcher("/admin/borrow_requests.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        Integer requestId = Integer.valueOf(req.getParameter("requestId"));
        BorrowRequest request = borrowRepo.findById(requestId);

        if (request != null) {
            if (uri.endsWith("/approve")) {
                if (request.getBook().getQuantity() > 0) {
                    request.setStatus("APPROVED");
                    Book book = request.getBook();
                    book.setQuantity(book.getQuantity() - 1);
                    bookRepo.save(book);
                    borrowRepo.save(request);
                }
            } else if (uri.endsWith("/reject")) {
                request.setStatus("REJECTED");
                borrowRepo.save(request);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/admin/borrow-requests");
    }
}