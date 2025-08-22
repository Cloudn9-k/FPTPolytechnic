<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách sách</title>
</head>
<body>
<h2>Danh sách sách</h2>
<p><a href="my-requests">Xem yêu cầu của tôi</a></p>
<p style="color:green">${param.message}</p>
<p style="color:red">${param.error}</p>

<form action="search" method="get">
    <input type="text" name="keyword" placeholder="Tìm kiếm theo tên hoặc tác giả" value="${keyword}">
    <button type="submit">Tìm kiếm</button>
</form>

<table border="1">
    <thead>
    <tr>
        <th>Tiêu đề</th>
        <th>Tác giả</th>
        <th>Số lượng còn</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.quantity}</td>
            <td>
                <c:if test="${book.quantity > 0}">
                    <form action="borrow" method="post">
                        <input type="hidden" name="bookId" value="${book.id}">
                        <button type="submit">Mượn</button>
                    </form>
                </c:if>
                <c:if test="${book.quantity <= 0}">
                    Hết sách
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
<%-- Phần pagination --%>
<div class="pagination">
    <c:if test="${currentPage > 1}">
        <a href="?page=${currentPage - 1}">Trước</a>
    </c:if>
    <c:forEach begin="1" end="${totalPages}" var="i">
        <a href="?page=${i}" class="${i == currentPage ? 'active' : ''}">${i}</a>
    </c:forEach>
    <c:if test="${currentPage < totalPages}">
        <a href="?page=${currentPage + 1}">Sau</a>
    </c:if>
</div>
</body>
</html>