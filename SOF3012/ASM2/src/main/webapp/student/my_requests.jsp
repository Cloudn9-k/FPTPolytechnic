<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Yêu cầu mượn của tôi</title>
</head>
<body>
<h2>Yêu cầu mượn của tôi</h2>
<table border="1">
    <thead>
    <tr>
        <th>Sách</th>
        <th>Ngày gửi</th>
        <th>Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${myRequests}" var="request">
        <tr>
            <td>${request.book.title}</td>
            <td><fmt:formatDate value="${request.requestDate}" pattern="dd/MM/yyyy HH:mm"/></td>
            <td>${request.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="books">Quay lại danh sách sách</a>
<br>
<a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
</body>
</html>