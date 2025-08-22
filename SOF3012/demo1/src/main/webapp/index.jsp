<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Login Form</h1>
<form action="/login" method="post">
    <p>Username: <input type="text" name="tenTaiKhoan"></p>
    <p>Password: <input type="password" name="matKhau"> </p>
    <p><input type="submit" value="Sign in"></p>
</form>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>