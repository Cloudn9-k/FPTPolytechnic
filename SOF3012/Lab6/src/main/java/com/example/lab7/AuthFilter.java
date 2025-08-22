package com.example.lab7;


import com.example.lab7.entity.Users;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter({"/admin/*", "/account/change-password", "/account/edit-profile", "/video/like/*", "/video/share/*"})
public class AuthFilter implements Filter {
    public static final String SECURITY_URI = "securityUri";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void destroy() {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Users user = (Users) session.getAttribute("user");
        String uri = req.getRequestURI();

        // Nếu người dùng chưa đăng nhập, chuyển hướng đến trang login
        if (user == null) {
            session.setAttribute(AuthFilter.SECURITY_URI, uri);
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // Nếu đã đăng nhập, kiểm tra quyền admin cho các đường dẫn admin
        if (uri.contains("/admin/") && !user.getIsAdmin()) {
            resp.sendRedirect(req.getContextPath() + "/video/list");
            return;
        }

        // Nếu mọi điều kiện đều hợp lệ, cho phép truy cập
        chain.doFilter(request, response);
    }
}
