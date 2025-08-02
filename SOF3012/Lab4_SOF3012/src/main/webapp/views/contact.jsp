<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contacts</title>
</head>
<body>
<h1>Danh sách Contact</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Email</th>
        <th>Birth Date</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${contacts}" var="contact">
        <tr>
            <td>${contact.id}</td>
            <td>${contact.fullName}</td>
            <td>${contact.email}</td>
            <td>
                <c:if test="${contact.birthDate != null}">
                    ${dateFormat.format(contact.birthDate)}
                </c:if>
                <c:if test="${contact.birthDate == null}">
                    N/A
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>