package com.example.buoi12_demojwtapp.configuration;

import com.example.buoi12_demojwtapp.service.JwtAuthFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
public class AppConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    // [cite: 134-142] Tạo 3 user trong bộ nhớ RAM
    @Bean
    public UserDetailsService userDetailsService(PasswordEncoder pe) {
        UserDetails user1 = User.withUsername("user@gmail.com")
                .password(pe.encode("123")).roles("USER").build();
        UserDetails user2 = User.withUsername("admin@gmail.com")
                .password(pe.encode("123")).roles("ADMIN").build();
        UserDetails user3 = User.withUsername("both@gmail.com")
                .password(pe.encode("123")).roles("USER", "ADMIN").build();
        return new InMemoryUserDetailsManager(user1, user2, user3);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, JwtAuthFilter jwtAuthFilter) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable)
                .cors(AbstractHttpConfigurer::disable)
                .sessionManagement(sess -> sess.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(auth -> auth
                        //  Phân quyền theo bảng
                        .requestMatchers("/poly/login").permitAll()
                        .requestMatchers("/poly/url1").authenticated()
                        .requestMatchers("/poly/url2").hasRole("USER")
                        .requestMatchers("/poly/url3").hasRole("ADMIN")
                        .requestMatchers("/poly/url4").hasAnyRole("USER", "ADMIN")
                        .anyRequest().permitAll()
                );

        // [cite: 157] Thêm filter JWT
        http.addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class);
        return http.build();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }
}