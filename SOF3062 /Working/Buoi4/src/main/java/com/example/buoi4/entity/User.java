package com.example.buoi4.entity;
import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Users")
public class User {
    @Id
    String username;
    String password;
    boolean enabled;
    @OneToMany(mappedBy = "user",fetch = FetchType.EAGER)
    List<UserRole> userRoles;

}
