package com.example.buoi5_maven.service; // Nhớ sửa package

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service("auth")
public class AuthenticationService {
    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }
    public String getUsername() {
        Authentication auth = getAuthentication();
        if (auth != null && auth.isAuthenticated() && !"anonymousUser".equals(auth.getPrincipal())) {
            return auth.getName();
        }
        return "Khách";
    }
    public List<String> getRoles() {
        Authentication auth = getAuthentication();
        if (auth == null || !auth.isAuthenticated()) return List.of();
        return auth.getAuthorities().stream()
                .map(a -> a.getAuthority())
                .collect(Collectors.toList());
    }
    public boolean hasAnyRole(String... roles) {
        List<String> currentRoles = getRoles();
        return Stream.of(roles).anyMatch(r -> currentRoles.contains("ROLE_" + r));
    }
}