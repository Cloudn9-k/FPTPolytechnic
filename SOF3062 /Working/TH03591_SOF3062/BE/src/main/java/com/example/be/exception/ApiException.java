package com.example.be.exception;

public class ApiException extends RuntimeException {
    private final String code;
    public ApiException(String code, String message) {
        super(message);
        this.code = code;
    }
}
