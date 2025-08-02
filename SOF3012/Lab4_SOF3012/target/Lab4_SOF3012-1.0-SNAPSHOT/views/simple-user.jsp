<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Users</title>
    <style>
    </style>
</head>
<body>
<h1>Danh sách Simple User</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.email != null ? user.email : "N/A"}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>