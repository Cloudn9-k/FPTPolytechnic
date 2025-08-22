<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập Admin</title>
</head>
<body>
<h2>Đăng nhập Admin</h2>
<p style="color:red">${error}</p>
<form action="login" method="post">
    Email: <input type="email" name="email" required><br>
    Mật khẩu: <input type="password" name="password" required><br>
    <button type="submit">Đăng nhập</button>
</form>
</body>
</html>