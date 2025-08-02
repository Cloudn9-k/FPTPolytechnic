package com.example.lab4_sof3012.module;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.text.SimpleDateFormat; // Thêm import này

@Getter
@Setter
@Entity
@Table(name = "NewsletterSubscriber")
public class NewsletterSubscriber {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "subscribed", nullable = false)
    private Boolean subscribed; // Ánh xạ BIT sang Boolean

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "subscribed_at")
    private Date subscribedAt;
}