package org.example.springcustomauthentication.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractAuthenticationFilterConfigurer;
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
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
    @Bean
    public UserDetailsService userDetailsService(PasswordEncoder pe) {

        String password = pe.encode("123");
        UserDetails user1 = User.withUsername("user@gmail.com").password(password).roles("USER").build();
        UserDetails user2 = User.withUsername("admin@gmail.com").password(password).roles("ADMIN").build();
        UserDetails user3 = User.withUsername("both@gmail.com").password(password).roles("BOTH").build();
        return new InMemoryUserDetailsManager(user1, user2, user3);
    }
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // Bỏ cors
        http.csrf(AbstractHttpConfigurer::disable);
        http.cors(AbstractHttpConfigurer::disable);
        // Khối authorize (ĐÃ SỬA ĐỔI)
        http.authorizeHttpRequests(auth -> {
                    auth.requestMatchers("/auth/**").permitAll();
                    auth.requestMatchers("/poly/admin").hasRole("ADMIN");
                    auth.requestMatchers("/poly/**").authenticated();
                    auth.requestMatchers("/admin/**").hasRole("ADMIN");
                    auth.requestMatchers("/user/**").hasAnyRole("ADMIN", "USER",  "BOTH");
                    auth.anyRequest().permitAll();
                }
        );
        // Cấu hình navigation
        http.formLogin(config -> {
            config.loginPage("/auth/login");
            config.loginProcessingUrl("/auth/check");
            // mặc định khi chưa đnhap
            config.defaultSuccessUrl("/");
            config.failureForwardUrl("/auth/failure");
            config.permitAll();
            config.usernameParameter("username");
            config.passwordParameter("password");
        });

        // Ghi nhớ đăng nhập
        http.rememberMe(config -> {
            config.tokenValiditySeconds(3*24*60*60);
            config.rememberMeParameter("remember-me");
            config.rememberMeCookieName("remember-me");
        });

        // Cấu hình logout
        http.logout(config -> {
            config.logoutUrl("/auth/logout");
            config.logoutSuccessUrl("/auth/exit");
            config.clearAuthentication(true);
            config.invalidateHttpSession(true);
            config.deleteCookies();
            config.permitAll();
        });
        // exception khi kco quyền
        http.exceptionHandling(ex -> {
            ex.accessDeniedHandler((request, response, accessDeniedException) -> {
                response.sendRedirect("/auth/fail");
            });
        });
        return http.build();
    }
}