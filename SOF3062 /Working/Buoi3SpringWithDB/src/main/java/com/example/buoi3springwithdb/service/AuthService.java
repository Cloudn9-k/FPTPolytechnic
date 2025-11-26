package com.example.buoi3springwithdb.service;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.List;
import java.util.stream.Stream;

public class AuthService {
    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }
    // bản thân Spring security đã cung cấp pthuc này và cả cái form rồi
    public String getUsername() {
        return getAuthentication().getName();
    }
    // Giả sử rằng String s ="Role_Admin" nên lấy ra chuỗi ADMIN
    // Lấy ra bộ vai trò được quản lý ởi Spring Secursity
    public List<String> getRoles() {
        return this.getAuthentication().getAuthorities().stream().map(
                authority
                        -> authority.getAuthority().substring(5)).toList();
    }
    public boolean isAuthenticate() {
        String username = this.getUsername();
        return (username != null && !username.equals("anonymousUser"));
    }
    public boolean hasAnyRole(String... rolesToCheck) {
        var grantedRoles = this.getRoles();
        return Stream.of(rolesToCheck).anyMatch(grantedRoles::contains);
    }
}
