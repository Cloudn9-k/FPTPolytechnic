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
    @GetMapping("/get-all")
    public String getAll() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        connection.setRequestMethod("GET");
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }
    // k khasc gi, thay key vao thoi
    @GetMapping("/get-by-key")
    public String getAllByKey() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/-OeQ3UW9kG51AYQWXJ11.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        connection.setRequestMethod("GET");
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }
    @GetMapping("/create")
    public String HttpURLPost() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json;charset=utf-8");
        connection.setRequestMethod("POST");
        //3 dau nhay doi la cu phap json
        var postData = """
                {"id":"sv111","name":"sinhvien07"}
                """;
        connection.setDoOutput(true);// khi goi post thi se output ket qua
        connection.getOutputStream().write(postData.getBytes());
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }
    @GetMapping("/put")
    public String HttpURLPut() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/-OeQ3UW9kG51AYQWXJ11.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json;charset=utf-8");
        connection.setRequestMethod("PUT");
        //3 dau nhay doi la cu phap json
        var putData = """
                {"id":"sv112","name":"sinhvien08"}
                """;
        connection.setDoOutput(true);// khi goi post thi se output ket qua
        connection.getOutputStream().write(putData.getBytes());
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }
    @GetMapping("/delete")
    public String HttpURLDelete() throws IOException {
        var url ="https://realtimedb-fc6d9-default-rtdb.firebaseio.com/student/-Oe_RT4I8ZmtbeFSuilm.json";
        var connection =(HttpURLConnection) new URL(url).openConnection();
        connection.setRequestProperty("Content-Type", "application/json;charset=utf-8");
        connection.setRequestMethod("DELETE");
        if (connection.getResponseCode() == 200) {
            String data = readFromStream(connection.getInputStream());
            System.out.println(data);
        }
        connection.disconnect();
        return "index";
    }

}
