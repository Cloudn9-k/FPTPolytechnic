package com.example.buoi4.config;

import com.example.buoi4.service.DaoUserDetailManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class AppConfig {

    private final DaoUserDetailManager daoUserDetailManager;

    public AppConfig(DaoUserDetailManager daoUserDetailManager) {
        this.daoUserDetailManager = daoUserDetailManager;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(daoUserDetailManager);
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable);
        http.cors(AbstractHttpConfigurer::disable);
        http.authorizeHttpRequests(auth -> {
            auth.requestMatchers("/poly/url1").hasAnyRole("USER", "ADMIN"); // Ví dụ
            auth.requestMatchers("/poly/url2").hasRole("ADMIN");            // Ví dụ
            auth.requestMatchers("/poly/admin").hasRole("ADMIN");           // Trang admin
            auth.requestMatchers("/poly/**").authenticated();               // Các trang poly còn lại cần đăng nhập
            auth.anyRequest().permitAll();                                  // Còn lại mở hết
        });
        // Cấu hình trang lỗi khi không đủ quyền (403)
        http.exceptionHandling(ex -> ex.accessDeniedPage("/auth/access/denied"));
        http.formLogin(login -> {
            login.permitAll(); // Cho phép tất cả mọi người truy cập vào trang login mặc định
            login.defaultSuccessUrl("/", true); // Login thành công thì về trang chủ (Controller map "/")
        });

        http.rememberMe(r -> r.tokenValiditySeconds(3 * 24 * 60 * 60));
        return http.build();
    }
}