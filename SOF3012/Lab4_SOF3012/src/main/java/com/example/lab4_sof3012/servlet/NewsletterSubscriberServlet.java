package com.example.lab4_sof3012.servlet;

import com.example.lab4_sof3012.module.NewsletterSubscriber;
import com.example.lab4_sof3012.repo.NewsletterSubscriberRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/newsletter-subscriber")
public class NewsletterSubscriberServlet extends HttpServlet {
    private final NewsletterSubscriberRepo repo = new NewsletterSubscriberRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NewsletterSubscriber> subscribers = repo.findAll();
        request.setAttribute("subscribers", subscribers);
        request.getRequestDispatcher("/views/newsletter-subscriber.jsp").forward(request, response);
    }
}