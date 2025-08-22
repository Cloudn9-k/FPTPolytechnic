package com.example.lab7_1.entity;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class RestIO {
    public static void writeObject(HttpServletResponse resp, Object data) throws IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("application/json");
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(), data);
    }
}
