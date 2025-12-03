package com.example.lab7_studentmanage.entity;
import jakarta.persistence.*;
import lombok.*;

@Data
@Entity
@Table(name = "Accounts")
public class Account {
    @Id
    String username;
    String password;
    String fullname;
    String email;
    String photo;
    Boolean activated;
    Boolean admin;
}