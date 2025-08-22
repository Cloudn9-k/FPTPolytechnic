package com.example.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.Date;

@Entity
@Table(name = "BorrowRequests")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class BorrowRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "UserId", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "BookId", nullable = false)
    private Book book;

    @Column(name = "RequestDate", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date requestDate;

    @Column(name = "Status", nullable = false)
    private String status;
}