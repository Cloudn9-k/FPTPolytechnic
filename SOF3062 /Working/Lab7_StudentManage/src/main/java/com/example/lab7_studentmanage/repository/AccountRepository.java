package com.example.lab7_studentmanage.repository;

import com.example.lab7_studentmanage.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, String> {
}
