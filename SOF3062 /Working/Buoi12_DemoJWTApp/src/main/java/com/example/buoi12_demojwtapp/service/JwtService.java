package com.example.buoi12_demojwtapp.service;

import io.jsonwebtoken.Jwt;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.util.Date;
import java.util.Map;

@Service
public class JwtService {
    // SInh key dạng mã hóa
    private Key getSigningKey() {
        // Gỉa sử key của ứng dụng
        String secretKey = "123456789.123456789.123456789"; // Lấy từ biến môi trường
        // Chuyển sang byte[]
        byte[] encodedKey = secretKey.getBytes();
        return Keys.hmacShaKeyFor(encodedKey); // Thuật toán HMAC
    }

    // Tạo Jwt
    public String createJwt(UserDetails user, int expiredSeconds) {
        // Lấy thời gin hiện tại của hệ thống
        long now = System.currentTimeMillis();

        // Tạo key
        return Jwts.builder()
                // Gán claim
                .setClaims(Map.of("name", "Poly"))
                // Tiêu đề
                .setSubject(user.getUsername())
                // Ngày phát hành token
                .setIssuedAt(new Date(now))
                // Ngày hết hạn
                .setExpiration(new Date(now + 1000L * expiredSeconds))
                // Ký token
                .signWith(this.getSigningKey(), SignatureAlgorithm.ES256)
                // Nén và tạo key
                .compact();
    }
}