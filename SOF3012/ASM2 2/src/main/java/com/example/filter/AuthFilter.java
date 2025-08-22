package com.example.filter;

import com.example.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class AuthFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);
        String uri = req.getRequestURI();

        // Bỏ qua các trang công khai
        if (uri.endsWith("/login") || uri.endsWith("/register") || uri.startsWith(req.getContextPath() + "/css") || uri.startsWith(req.getContextPath() + "/js")) {
            chain.doFilter(request, response);
            return;
        }

        User loggedInUser = (session != null) ? (User) session.getAttribute("user") : null;

        // Nếu chưa đăng nhập, chuyển hướng về trang login
        if (loggedInUser == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // Phân quyền cho student và admin
        if (loggedInUser.getRole().equals("STUDENT")) {
            if (uri.startsWith(req.getContextPath() + "/admin")) {
                resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Admin role required.");
                return;
            }
        } else if (loggedInUser.getRole().equals("ADMIN")) {
            if (uri.startsWith(req.getContextPath() + "/student")) {
                resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Student role required.");
                return;
            }
        }

        chain.doFilter(request, response);
    }
}
