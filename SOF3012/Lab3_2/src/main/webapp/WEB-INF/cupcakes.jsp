<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cupcake Catalog</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    table { width: 80%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
    th { background-color: #f2f2f2; }
    .gluten-free { color: green; font-weight: bold; }
    .gluten-free-icon::before { content: "✨ "; }
  </style>
</head>
<body>
<h1>Cupcake Catalog</h1>

<table>
  <thead>
  <tr>
    <th>Flavor</th>
    <th>Frosting</th>
    <th>Price</th>
    <th>Baked On</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="cupcake" items="${cupcakes}">
    <tr>
      <td>
        <c:out value="${cupcake.flavor}" />
        <c:if test="${cupcake.isGlutenFree}">
          <span class="gluten-free gluten-free-icon">(Gluten-Free)</span>
        </c:if>
      </td>
      <td><c:out value="${cupcake.frosting}" /></td>
      <td>$<c:out value="${cupcake.price}" /></td>
      <td><c:out value="${cupcake.bakedOn}" /></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>