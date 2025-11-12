package com.example.buoi4.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "UserRoles")
public class UserRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "username",referencedColumnName = "username")
    private User user;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "roleid",referencedColumnName = "id")
    private Role role;
}
