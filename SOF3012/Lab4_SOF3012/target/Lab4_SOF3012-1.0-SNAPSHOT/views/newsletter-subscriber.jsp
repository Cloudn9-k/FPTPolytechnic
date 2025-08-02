<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Newsletter Subscribers</title>
  <style>
  </style>
</head>
<body>
<h1>Danh sách Newsletter Subscriber</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Email</th>
    <th>Subscribed</th>
    <th>Subscribed At</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${subscribers}" var="sub">
    <tr>
      <td>${sub.id}</td>
      <td>${sub.email}</td>
      <td>${sub.subscribed ? "YES" : "NO"}</td>
      <td>${sub.subscribedAt}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>