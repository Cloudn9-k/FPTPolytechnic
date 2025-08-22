package com.example.servlet.student;

import com.example.entity.Book;
import com.example.entity.BorrowRequest;
import com.example.entity.User;
import com.example.repository.BookRepository;
import com.example.repository.BorrowRequestRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet({"/student/borrow", "/student/my-requests"})
public class BorrowServlet extends HttpServlet {
    private BookRepository bookRepo = new BookRepository();
    private BorrowRequestRepository borrowRepo = new BorrowRequestRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.endsWith("/my-requests")) {
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("user");
            List<BorrowRequest> myRequests = borrowRepo.findByUserId(user.getId());
            req.setAttribute("myRequests", myRequests);
            req.getRequestDispatcher("/student/my_requests.jsp").forward(req, resp);
        } else {
            // Trường hợp truy cập thẳng /student/borrow bằng GET
            resp.sendRedirect(req.getContextPath() + "/student/books");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.endsWith("/borrow")) {
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("user");
            Integer bookId = Integer.valueOf(req.getParameter("bookId"));

            Book book = bookRepo.findById(bookId);
            if (book != null && book.getQuantity() > 0) {
                BorrowRequest request = new BorrowRequest();
                request.setBook(book);
                request.setUser(user);
                request.setRequestDate(new Date());
                request.setStatus("PENDING");
                borrowRepo.save(request);

                // Sửa lỗi: Chuyển hướng về trang danh sách sách kèm thông báo thành công
                resp.sendRedirect(req.getContextPath() + "/student/books?message=yeu cau thanh cong!");
            } else {
                // Sửa lỗi: Chuyển hướng về trang danh sách sách kèm thông báo lỗi
                resp.sendRedirect(req.getContextPath() + "/student/books?error=sach da het");
            }
        }
    }
}