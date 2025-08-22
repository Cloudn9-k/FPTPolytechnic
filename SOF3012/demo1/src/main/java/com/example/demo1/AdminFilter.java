package com.example.demo1;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.http.HttpRequest;

@WebFilter("/admin")
public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("user");
        if(username==null || username.isEmpty()){
            response.getWriter().println("<h1>please login first</h1>");
        } else if (!username.equals("admin")) {
            response.getWriter().println("<h1>you re not admin</h1>");
        }else {
            chain.doFilter(request,response);
        }
        //cho di tiep

    }
}
