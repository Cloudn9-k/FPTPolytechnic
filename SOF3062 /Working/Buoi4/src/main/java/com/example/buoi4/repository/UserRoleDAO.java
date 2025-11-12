package com.example.buoi4.repository;

import com.example.buoi4.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleDAO extends JpaRepository<UserRole, Long> {

}
