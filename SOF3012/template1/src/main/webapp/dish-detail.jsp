<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>details</title>
</head>
<body>
<h2>details name: ${dish.name}</h2>
<p><b>ID:</b> ${dish.id}</p>
<p><b>Calories:</b> ${dish.calories}</p>
<p><b>vegan:</b> ${dish.isVegan ? "co" : "ko"}</p>
<p><b>description:</b> ${dish.description}</p>
<a href="/dish-servlet">quay lai</a>
</body>
</html>