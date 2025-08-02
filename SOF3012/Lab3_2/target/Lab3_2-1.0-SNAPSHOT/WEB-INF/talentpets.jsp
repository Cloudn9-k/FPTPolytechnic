<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Pet Talent Show</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    table { width: 80%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
    th { background-color: #f2f2f2; }
    .finalist { color: purple; font-weight: bold; }
  </style>
</head>
<body>
<h1>Pet Talent Show Participants (Sorted by Score)</h1>

<table>
  <thead>
  <tr>
    <th>Name</th>
    <th>Species</th>
    <th>Trick Performed</th>
    <th>Score</th>
    <th>Finalist</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="pet" items="${pets}">
    <tr>
      <td><c:out value="${pet.name}" /></td>
      <td><c:out value="${pet.species}" /></td>
      <td><c:out value="${pet.trickPerformed}" /></td>
      <td><c:out value="${pet.score}" /></td>
      <td>
        <c:if test="${pet.isFinalist}">
          <span class="finalist">YES</span>
        </c:if>
        <c:if test="${!pet.isFinalist}">
          NO
        </c:if>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>