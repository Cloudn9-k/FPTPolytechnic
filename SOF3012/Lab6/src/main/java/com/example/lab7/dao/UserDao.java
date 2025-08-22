package com.example.lab7.dao;

import com.example.lab7.entity.Users;

import java.util.List;

public interface UserDao {
    Users findById(String username);
}