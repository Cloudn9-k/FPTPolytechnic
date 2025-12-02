package com.example.buoi12_demojwtapp.service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class JwtService {
    // [cite: 78] Secret key phải đủ dài (>32 bytes) cho HS256
    private static final String SECRET = "0123456789.0123456789.0123456789.0123456789";

    private Key getSigningKey() {
        byte[] keyBytes = SECRET.getBytes();
        return Keys.hmacShaKeyFor(keyBytes);
    }

    // [cite: 46] Tạo token
    public String createJwt(UserDetails user, int expiredSeconds) {
        long now = System.currentTimeMillis();
        return Jwts.builder()
                .setClaims(new HashMap<>())
                .setSubject(user.getUsername())
                .setIssuedAt(new Date(now))
                .setExpiration(new Date(now + 1000L * expiredSeconds))
                .signWith(getSigningKey(), SignatureAlgorithm.HS256)
                .compact();
    }

    // [cite: 59] Lấy body (claims) từ token
    public Claims getBodyFromJwt(String token) {
        return Jwts.parserBuilder()
                .setSigningKey(getSigningKey())
                .build()
                .parseClaimsJws(token)
                .getBody();
    }

    // [cite: 70] Kiểm tra hạn token
    public boolean validate(Claims claims) {
        return claims.getExpiration().after(new Date());
    }
}