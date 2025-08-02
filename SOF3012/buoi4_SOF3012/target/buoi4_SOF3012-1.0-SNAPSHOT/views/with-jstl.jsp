<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: phamthihang
  Date: 17/7/25
  Time: 08:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
THong tin nhan vien
<table>
    <thead>
    <tr>
        <th> id</th>
        <th>ten dau</th>
        <th>ten cuoi</th>
        <th>email</th>
        <th>phone</th>
        <th>ngay thue</th>
        <th>vi tri</th>
        <th>luong</th>
        <th>bo phan</th>
        <th>manager id</th>
        <th>ngay sinh</th>
        <th>dia chi</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${DSnhanVien}" var="nv">
        <tr>
            <td>${nv.id}</td>
            <td>${nv.firstName}</td>
            <td>${nv.lastName}</td>
            <td>${nv.email}</td>
            <td>${nv.phone}</td>
            <td>${nv.hireDate}</td>
            <td>${nv.position}</td>
            <td>${nv.salary}</td>
            <td>${nv.department}</td>
            <td>${nv.managerId}</td>
            <td>${nv.birthDate}</td>
            <td>${nv.address}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
