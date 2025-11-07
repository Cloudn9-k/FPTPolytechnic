package com.example.buoi3springwithdb.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
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
    //change: truyền vào datasoure
    public UserDetailsService userDetailsService(DataSource dataSource,
                                                 PasswordEncoder pe) {
//        String password = pe.encode("123");
//        UserDetails user1 = User.withUsername("user@gmail.com").password(password).roles("USER").build();
//        UserDetails user2 = User.withUsername("admin@gmail.com").password(password).roles("ADMIN").build();
//        UserDetails user3 = User.withUsername("both@gmail.com").password(password).roles("BOTH").build();
//        return new InMemoryUserDetailsManager(user1, user2, user3);
        return new JdbcUserDetailsManager(dataSource);
        // lưu ý: thì trong Spring Security, đối tượng này tự thiết lập, với đkien là phải giống, nó sẽ tự động ánh xạ
    }
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // Bỏ cors
        http.csrf(AbstractHttpConfigurer::disable);
        http.cors(AbstractHttpConfigurer::disable);

        // Khối authorize
        http.authorizeHttpRequests(auth -> {
                    // SỬA: Cho phép tất cả các trang /auth/ (form, check, failure, exit)
                    auth.requestMatchers("/auth/**").permitAll();
                    auth.requestMatchers("/poly/**").authenticated();
                    // SỬA: Phân quyền admin chặt chẽ hơn
                    auth.requestMatchers("/admin/**").hasRole("ADMIN");
                    auth.requestMatchers("/user/**").hasAnyRole("ADMIN", "USER",  "BOTH");
                    auth.anyRequest().permitAll();
                }
        );
        // Cấu hình navigation
        http.formLogin(config -> {
            // SỬA 1: Trang login phải khớp với LoginController (case "form")
            config.loginPage("/auth/form");
            config.loginProcessingUrl("/auth/check");
            // SỬA 2: Bỏ 'true' để cho phép quay lại trang cũ (ví dụ: /poly/url1)
            config.defaultSuccessUrl("/");
            config.failureForwardUrl("/auth/failure");
            config.permitAll();
            config.usernameParameter("username");
            config.passwordParameter("password");
        });

        // Ghi nhớ đăng nhập (Giữ nguyên)
        http.rememberMe(config -> {
            config.tokenValiditySeconds(3*24*60*60);
            config.rememberMeParameter("remember-me");
            config.rememberMeCookieName("remember-me");
        });

        // Cấu hình logout (Giữ nguyên)
        http.logout(config -> {
            config.logoutUrl("/auth/logout");
            config.logoutSuccessUrl("/auth/exit");
            config.clearAuthentication(true);
            config.invalidateHttpSession(true);
            config.deleteCookies();
            config.permitAll();
        });
        return http.build();
    }
}