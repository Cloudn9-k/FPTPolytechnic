<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tasks</title>
  <style>
  </style>
</head>
<body>
<h1>Danh sách Task</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Description</th>
    <th>Status</th>
    <th>Due Date</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${tasks}" var="task">
    <tr>
      <td>${task.id}</td>
      <td>${task.title}</td>
      <td>${task.description != null ? task.description : "N/A"}</td>
      <td>${task.status}</td>
      <td>${task.dueDate}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>