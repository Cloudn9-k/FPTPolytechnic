<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>thêm</title>
</head>
<body>
<h2>Form </h2>
<form action="/dish-servlet/add" method="post">
    name: <input type="text" name="name" required> <br>
    calories: <input type="number" name="calories" required min="0"> <br>
    vegan: <input type="checkbox" name="isVegan" value="true"> <br>
    description: <textarea name="description"></textarea> <br>
    <button type="submit">thêm</button>
</form>

<br>

<c:if test="${not empty message}">
    <p class="${messageType}">${message}</p>
</c:if>

<h2>list món</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>name</th>
        <th>calories</th>
        <th>vegan</th>
        <th>action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${dishList}" var="dish">
        <tr>
            <td>${dish.id}</td>
            <td>${dish.name}</td>
            <td>${dish.calories}</td>
            <td>${dish.isVegan ? "Có" : "Không"}</td>
            <td>
                <a href="/dish-servlet/detail?id=${dish.id}">Xem</a> |
                <a href="/dish-servlet/edit?id=${dish.id}">Sửa</a> |
                <a href="/dish-servlet/delete?id=${dish.id}" onclick="return confirm('xoá?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>