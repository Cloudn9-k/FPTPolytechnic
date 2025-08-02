package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Contact")
@Getter
@Setter
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "email", unique = true)
    private String email;
    @Column(name = "birth_date")
    @Temporal(TemporalType.DATE)
    private Date birthDate;
}
