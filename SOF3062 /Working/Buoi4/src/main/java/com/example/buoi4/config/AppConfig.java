package com.example.buoi4.config;

import com.example.buoi4.service.DaoUserDetailManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class AppConfig {
    protected final DaoUserDetailManager daoUserDetailManager;
    public AppConfig(DaoUserDetailManager daoUserDetailManager) {
        this.daoUserDetailManager = daoUserDetailManager;
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable);
        http.cors(AbstractHttpConfigurer::disable);
        http
                .authorizeHttpRequests(auth -> {
                    auth.requestMatchers("/poly/**").authenticated();
                    auth.anyRequest().permitAll();
                }

        )
                .formLogin(Customizer.withDefaults())
                .rememberMe( r->r.tokenValiditySeconds(3*24*60*60)
                );
        return http.build();
    }
}
