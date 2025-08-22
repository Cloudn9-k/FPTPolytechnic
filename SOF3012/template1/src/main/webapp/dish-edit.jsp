<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>udpate</title>
</head>
<body>
<h2>udptae</h2>
<form action="/dish-servlet/update" method="post">
    <input type="hidden" name="id" value="${dish.id}">
    name : <input type="text" name="name" value="${dish.name}" required> <br>
    calories: <input type="number" name="calories" value="${dish.calories}" required min="0"> <br>
    vegan: <input type="checkbox" name="isVegan" value="true" ${dish.isVegan ? "checked" : ""}> <br>
    description: <textarea name="description">${dish.description}</textarea> <br>
    <button type="submit">update</button>
</form>
</body>
</html>