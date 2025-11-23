package com.example.b8_demohttpurlconnection.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class StreamUtils {
    // su dung byteArrayOutputStream de ghi du lieu tam thoi
    public static String readFromStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream OutputStream = new ByteArrayOutputStream();
        // đọc 1 lần 4kb
        byte[] buffer = new byte[4*1024];
        // đọc để liệu cho đến khi hết
        while(true){
            int n = inputStream.read(buffer); // đọc dữ liệu vào buffer
            if(n<0) break; // hết dữ liệu thì thoát vòng lặp
            OutputStream.write(buffer,0,n); // ghi dữ liệu vào buffer
        }
        return OutputStream.toString();

    }
}
