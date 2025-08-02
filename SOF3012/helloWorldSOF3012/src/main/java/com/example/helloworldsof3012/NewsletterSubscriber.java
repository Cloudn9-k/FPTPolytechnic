package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.BitSet;
import java.util.Date;
@Entity
@Table(name = "NewsletterSubscriber")
@Getter
@Setter
public class NewsletterSubscriber {
//    CREATE TABLE NewsletterSubscriber (
//            id INT PRIMARY KEY IDENTITY(1,1),
//    email NVARCHAR(100) NOT NULL UNIQUE,
//    subscribed BIT NOT NULL DEFAULT 1,
//    subscribed_at DATETIME DEFAULT GETDATE()
//);
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id")
private Integer id;
    @Column(name = "email", unique = true)
    private String email;
    @Column(name = "subscribed")
    private BitSet  subscribed;
    @Column(name = "subscribed_at")
    private Date  subscribed_at;
}
