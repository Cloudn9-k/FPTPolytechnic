<%-- File: src/main/webapp/View/active_members.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Danh sách Hội viên Hoạt động" />
</jsp:include>

<h1>Danh sách Hội viên Đang hoạt động</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Mã TV</th>
        <th>Họ và Tên</th>
        <th>Email</th>
        <th>Điện thoại</th>
        <th>Ngày sinh</th>
        <th>Ngày tham gia</th>
        <th>Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="member" items="${activeMembers}">
        <tr>
            <td><c:out value="${member.id}"/></td>
            <td><c:out value="${member.memberCode}"/></td>
            <td><c:out value="${member.fullName}"/></td>
            <td><c:out value="${member.email}"/></td>
            <td><c:out value="${member.phone}"/></td>
            <td><c:out value="${member.dob}"/></td>
            <td><c:out value="${member.joinDate}"/></td>
            <td><c:out value="${member.status}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p class="back-link"><a href="${pageContext.request.contextPath}/">Quay lại Trang chủ</a></p>

<%@ include file="footer.jsp" %>
