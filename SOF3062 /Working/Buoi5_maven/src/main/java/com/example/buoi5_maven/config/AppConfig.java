package com.example.buoi5_maven.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.oidc.user.DefaultOidcUser;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.sql.DataSource;
@Configuration
@EnableWebSecurity
@EnableMethodSecurity(prePostEnabled = true)
public class AppConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService(DataSource dataSource) {
        JdbcUserDetailsManager manager = new JdbcUserDetailsManager(dataSource);
        manager.setUsersByUsernameQuery("SELECT Username, Password, Enabled FROM Users WHERE Username = ?");
        manager.setAuthoritiesByUsernameQuery("SELECT Username, RoleId FROM UserRoles WHERE Username = ?");
        return manager;
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable).cors(AbstractHttpConfigurer::disable);
        http.authorizeHttpRequests(auth -> auth.anyRequest().permitAll());
        http.formLogin(config -> {
            config.loginPage("/auth/login");
            config.loginProcessingUrl("/auth/check");
            config.defaultSuccessUrl("/", true);
            config.failureUrl("/auth/login?error=true");
            config.usernameParameter("username");
            config.passwordParameter("password");
        });

        http.oauth2Login(config -> {
            config.loginPage("/auth/login");
            config.defaultSuccessUrl("/", true);
            config.failureUrl("/auth/login");

            // Logic login Google
            config.successHandler((request, response, authentication) -> {
                DefaultOidcUser oidcUser = (DefaultOidcUser) authentication.getPrincipal();
                String email = oidcUser.getEmail();
                UserDetails newUser = User.withUsername(email)
                        .password("{noop}")
                        .roles("USER")
                        .build();
                Authentication newAuth = new UsernamePasswordAuthenticationToken(
                        newUser, null, newUser.getAuthorities());
                SecurityContextHolder.getContext().setAuthentication(newAuth);
                response.sendRedirect("/");
            });
        });
        http.logout(config -> {
            config.logoutUrl("/auth/logout");
            config.logoutRequestMatcher(request ->
                    request.getRequestURI().equals("/auth/logout") && request.getMethod().equals("GET")
            );
            config.logoutSuccessUrl("/auth/login?logout=true"); // Redirect về login kèm thông báo
            config.clearAuthentication(true);
            config.invalidateHttpSession(true);
            config.deleteCookies("remember-me", "JSESSIONID");
        });

        return http.build();
    }
}