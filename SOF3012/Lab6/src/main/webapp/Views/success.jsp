<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập thành công</title>
</head>
<body>
<h1>Đăng nhập thành công!</h1>
<p>Chào mừng bạn, <%= request.getSession().getAttribute("user") != null ? ((com.example.lab7.entity.Users) request.getSession().getAttribute("user")).getUsername() : "khách" %>!</p>
</body>
</html>