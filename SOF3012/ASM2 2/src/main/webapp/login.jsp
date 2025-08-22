<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập Sinh viên</title>
</head>
<body>
<h2>Đăng nhập Sinh viên</h2>
<p style="color:red">${error}</p>
<form action="login" method="post">
    Email: <input type="email" name="email" required><br>
    Mật khẩu: <input type="password" name="password" required><br>
    <button type="submit">Đăng nhập</button>
</form>
<p>Bạn chưa có tài khoản? <a href="register">Đăng ký ngay</a></p>
</body>
</html>