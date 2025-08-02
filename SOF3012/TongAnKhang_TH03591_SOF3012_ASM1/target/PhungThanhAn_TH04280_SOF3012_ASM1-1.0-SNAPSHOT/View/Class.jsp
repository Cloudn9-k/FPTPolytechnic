<%-- File: src/main/webapp/View/classes.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Danh sách Lớp tập" />
</jsp:include>

<h1>Danh sách Toàn bộ Lớp tập</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên lớp</th>
        <th>Huấn luyện viên</th>
        <th>Danh mục</th>
        <th>Thời gian</th>
        <th>Max HV</th>
        <th>Chi tiết</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cls" items="${classes}">
        <tr>
            <td><c:out value="${cls.id}"/></td>
            <td><c:out value="${cls.className}"/></td>
            <td><c:out value="${cls.trainerId.fullName}"/></td>
            <td><c:out value="${cls.category}"/></td>
            <td><c:out value="${cls.scheduleTime}"/></td>
            <td><c:out value="${cls.maxParticipants}"/></td>
            <td><a href="${pageContext.request.contextPath}/classes/detail?id=<c:out value="${cls.id}"/>">Xem</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p class="back-link"><a href="${pageContext.request.contextPath}/">Quay lại Trang chủ</a></p>

<%@ include file="footer.jsp" %>
