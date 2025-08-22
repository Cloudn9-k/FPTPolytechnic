package com.example.controller;

import com.example.module.Dishes;
import com.example.repo.DishesRepo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "dishServlet", value = {
        "/dish-servlet",
        "/dish-servlet/add",
        "/dish-servlet/edit",
        "/dish-servlet/update",
        "/dish-servlet/delete",
        "/dish-servlet/detail"
})
public class DishServlet extends HttpServlet {
    private DishesRepo Repo = new DishesRepo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/delete")) {
            deleteDish(req, resp);
        } else if (uri.contains("/edit")) {
            showEditForm(req, resp);
        } else if (uri.contains("/detail")) {
            showDishDetail(req, resp);
        } else {
            showDishList(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/add")) {
            addDish(req, resp);
        } else if (uri.contains("/update")) {
            updateDish(req, resp);
        }
    }

    private void showDishList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("dishList", Repo.getAllDishes());
        req.getRequestDispatcher("/dishes.jsp").forward(req, resp);
    }

    private void deleteDish(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Repo.xoaDishes(id);
        resp.sendRedirect("/dish-servlet");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Dishes dish = Repo.getDishes(id);
        req.setAttribute("dish", dish);
        req.getRequestDispatcher("/dish-edit.jsp").forward(req, resp);
    }

    private void showDishDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Dishes dish = Repo.getDishes(id);
        req.setAttribute("dish", dish);
        req.getRequestDispatcher("/dish-detail.jsp").forward(req, resp);
    }

    private void addDish(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String name = req.getParameter("name");
        Integer calories = Integer.valueOf(req.getParameter("calories"));
        Boolean isVegan = req.getParameter("isVegan") != null;
        String description = req.getParameter("description");

        if (name == null || name.trim().isEmpty() || calories < 0) {
            req.setAttribute("message", "tên k trống và calories ko dc bé hơn 0");
            req.setAttribute("messageType", "error");
            showDishList(req, resp);
            return;
        }

        Dishes newDish = new Dishes(null, name, calories, isVegan, description);
        Repo.themDishes(newDish);

        req.setAttribute("message", "Thêm thành công");
        req.setAttribute("messageType", "success");
        showDishList(req, resp);
    }

    private void updateDish(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        String name = req.getParameter("name");
        Integer calories = Integer.valueOf(req.getParameter("calories"));
        Boolean isVegan = req.getParameter("isVegan") != null;
        String description = req.getParameter("description");

        if (name == null || name.trim().isEmpty() || calories < 0) {
            req.setAttribute("message", "tên k trống và calories ko dc bé hơn 0");
            req.setAttribute("messageType", "error");
            showEditForm(req, resp);
            return;
        }

        Dishes updatedDish = new Dishes(id, name, calories, isVegan, description);
        Repo.suaDishes(updatedDish);

        resp.sendRedirect("/dish-servlet");
    }
}