<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<h1>Đăng nhập</h1>
<c:url var="url" value="/login"></c:url> <i style="color: red;">${message}</i> <form action="${url}" method="post"> Tên đăng nhập: <input name="username"><br> Mật khẩu: <input name="password" type="password"><hr> <button>Đăng nhập</button> </form>
</body>
</html>