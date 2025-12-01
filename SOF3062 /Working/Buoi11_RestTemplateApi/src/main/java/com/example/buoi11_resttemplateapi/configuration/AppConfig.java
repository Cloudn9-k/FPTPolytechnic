package com.example.buoi11_resttemplateapi.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class AppConfig {
    @Bean
    public RestTemplate restTemplate() {
    // đối với Api thì sdung RestController
        return new RestTemplate();
    }
}
