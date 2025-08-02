package com.example.tongankhang_th03591_sof3012_asm1.servlet;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Class;
import com.example.tongankhang_th03591_sof3012_asm1.enity.Class_Registration;
import com.example.tongankhang_th03591_sof3012_asm1.repository.ClassRepo;
import com.example.tongankhang_th03591_sof3012_asm1.repository.Class_RegistrationRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet("/classes/detail")
public class ClassDetailSv7 extends HttpServlet {
    private final ClassRepo classRepo = new ClassRepo();
    private final Class_RegistrationRepo classRegistrationRepo = new Class_RegistrationRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        Integer classId = null;
        Class classDetail = null;
        List<Class_Registration> registeredMembers = null;

        if (idParam != null && !idParam.trim().isEmpty()) {
            try {
                classId = Integer.parseInt(idParam);
                classDetail = classRepo.findById(classId); // Lấy chi tiết lớp học
                if (classDetail != null) {
                    registeredMembers = classRegistrationRepo.findByClassId(classId); // Lấy danh sách học viên đăng ký
                }
            } catch (NumberFormatException e) {
                // Xử lý nếu ID không hợp lệ
                System.err.println("Invalid class ID format: " + idParam);
                request.setAttribute("errorMessage", "ID lớp học không hợp lệ.");
            }
        } else {
            request.setAttribute("errorMessage", "Vui lòng cung cấp ID lớp học.");
        }

        request.setAttribute("classDetail", classDetail);
        request.setAttribute("registeredMembers", registeredMembers);

        // Chuyển tiếp đến trang JSP để hiển thị
        request.getRequestDispatcher("/View/class_detail.jsp").forward(request, response);
    }
}
