package com.example.buoi5.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class AppConfig {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
    @Bean
    public UserDetailsService userDetailsService(DataSource dataSource) {
        return new JdbcUserDetailsManager(dataSource);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable)
                .cors(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(auth-> {
                    auth.requestMatchers("/poly/**").authenticated();
                    auth.anyRequest().permitAll();
                })
                .formLogin(config -> {
                    config.loginPage("/auth/login");
                    config.loginProcessingUrl("/auth/check");
                    config.defaultSuccessUrl("/", true);
                    config.failureUrl("/auth/login");
                    config.usernameParameter("username");
                    config.passwordParameter("password");
                })
                // casu hình đăng nhặp bằng tài khoản google
                .oauth2Login(config ->{
                    config.loginPage("/auth/login");
                    config.defaultSuccessUrl("/",true);
                    config.failureUrl("/auth/login");
                })
                .rememberMe(config -> {
                    config.tokenValiditySeconds(3*24*60*60);
                    config.rememberMeParameter("remember-me");
                    config.rememberMeCookieName("remember-me");
                })
                .logout(config -> {
                    config.logoutUrl("/auth/logout");
                    config.logoutSuccessUrl("/");
                    config.clearAuthentication(true);
                    config.invalidateHttpSession(true);
                    config.deleteCookies("remember-me");
                });
        return http.build();
    }
}