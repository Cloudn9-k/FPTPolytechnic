<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Đăng ký tài khoản</title>
</head>
<body>
<h2>Đăng ký tài khoản</h2>
<p style="color:red">${error}</p>
<form action="register" method="post">
  Họ tên: <input type="text" name="name" required><br>
  Email: <input type="email" name="email" required><br>
  Mật khẩu: <input type="password" name="password" required><br>
  <button type="submit">Đăng ký</button>
</form>
<p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
</body>
</html>