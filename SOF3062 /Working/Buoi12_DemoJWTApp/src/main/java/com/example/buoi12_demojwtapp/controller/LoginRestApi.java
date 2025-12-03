package com.example.buoi12_demojwtapp.controller;

import com.example.buoi12_demojwtapp.service.JwtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class LoginRestApi {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtService jwtService;

    //API Login
    @PostMapping("/poly/login")
    public Object login(@RequestBody Map<String, String> userInfo) {
        String username = userInfo.get("username");
        String password = userInfo.get("password");

        // Xác thực user
        var authInfo = new UsernamePasswordAuthenticationToken(username, password);
        var authentication = authenticationManager.authenticate(authInfo);

        if (authentication.isAuthenticated()) {
            UserDetails user = (UserDetails) authentication.getPrincipal();
            //Tạo token có hạn 20 phút
            String token = jwtService.createJwt(user, 20 * 60);
            return Map.of("token", token);
        }
        throw new UsernameNotFoundException("Đăng nhập thất bại");
    }
}