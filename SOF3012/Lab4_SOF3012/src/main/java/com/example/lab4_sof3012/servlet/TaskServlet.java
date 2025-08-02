package com.example.lab4_sof3012.servlet;

import com.example.lab4_sof3012.module.Task;
import com.example.lab4_sof3012.repo.TaskRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/task")
public class TaskServlet extends HttpServlet {
    private final TaskRepo repo = new TaskRepo();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Task> tasks = repo.findAll();
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("/views/task.jsp").forward(request, response);
    }
}