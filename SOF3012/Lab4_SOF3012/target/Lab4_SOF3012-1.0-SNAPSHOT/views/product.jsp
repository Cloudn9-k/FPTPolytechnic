<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Products</title>
  <style>
  </style>
</head>
<body>
<h1>Danh sách Product</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>In Stock</th>
    <th>Created At</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${products}" var="product">
    <tr>
      <td>${product.id}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>${product.inStock}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>