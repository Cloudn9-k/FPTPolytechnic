package com.example.b8_demohttpurlconnection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import static com.example.b8_demohttpurlconnection.utils.StreamUtils.readFromStream;

@Controller
public class HttpURLController {
    //get all
    @GetMapping("get-all")
    public String getAll() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        connection.setRequestProperty("GET");
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }
}
