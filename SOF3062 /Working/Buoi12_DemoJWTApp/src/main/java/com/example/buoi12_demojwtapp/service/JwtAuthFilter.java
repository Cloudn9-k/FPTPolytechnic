package com.example.buoi12_demojwtapp.service;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Service
public class JwtAuthFilter extends OncePerRequestFilter {
    @Autowired
    private JwtService jwtService;

    @Autowired
    private UserDetailsService userDetailsService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        // [cite: 96] Kiểm tra context
        if (SecurityContextHolder.getContext().getAuthentication() == null) {
            String authorization = request.getHeader("Authorization");

            // [cite: 97] Kiểm tra header Authorization
            if (authorization != null && authorization.startsWith("Bearer ")) {
                String token = authorization.substring(7).trim();
                try {
                    var claims = jwtService.getBodyFromJwt(token);
                    // [cite: 100] Validate token
                    if (jwtService.validate(claims)) {
                        String username = claims.getSubject();
                        UserDetails userDetails = userDetailsService.loadUserByUsername(username);

                        // [cite: 108] Thiết lập Authentication vào SecurityContext
                        var auth = new UsernamePasswordAuthenticationToken(
                                userDetails, null, userDetails.getAuthorities());
                        SecurityContextHolder.getContext().setAuthentication(auth);
                    }
                } catch (Exception e) {
                    System.out.println("Token không hợp lệ: " + e.getMessage());
                }
            }
        }

        // QUAN TRỌNG: Cho phép request đi tiếp
        filterChain.doFilter(request, response);
    }
}