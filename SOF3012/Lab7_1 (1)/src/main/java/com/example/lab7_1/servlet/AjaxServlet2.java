package com.example.lab7_1.servlet;

import com.example.lab7_1.entity.RestIO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/ajax2")
@MultipartConfig
public class AjaxServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Chuyển hướng yêu cầu GET đến file upload.jsp
        req.getRequestDispatcher("/Views/uploads.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();
            String fileType = filePart.getContentType();
            long fileSize = filePart.getSize();

            String uploadPath = request.getServletContext().getRealPath("/uploads.jsp");
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }
            filePart.write(new File(uploadDir, fileName).getAbsolutePath());

            Map<String, Object> fileInfo = new HashMap<>();
            fileInfo.put("name", fileName);
            fileInfo.put("type", fileType);
            fileInfo.put("size", fileSize);

            RestIO.writeObject(response, fileInfo);

        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            RestIO.writeObject(response, Map.of("error", e.getMessage()));
        }
    }
}
