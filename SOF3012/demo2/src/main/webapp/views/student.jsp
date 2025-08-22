<%--
  Created by IntelliJ IDEA.
  User: phamthihang
  Date: 7/8/25
  Time: 07:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Tên </th>
    <th>classdate</th>
    <th>status</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="st" items="${students}">
  <tr>
    <td><c:out value="${st.id}"/></td>
    <td><c:out value="${st.studentName}"/></td>
    <td><c:out value="${st.classDate}"/></td>
    <td><c:out value="${st.status}"/></td>
    <td><button>Deleltes</button></td>
  </tr>

  </c:forEach>
</body>
</html>
