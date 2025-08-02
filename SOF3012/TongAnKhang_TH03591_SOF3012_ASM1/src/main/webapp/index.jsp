<%-- File: src/main/webapp/View/home.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- Thay đổi từ include directive sang include action tag để có thể truyền param --%>
<jsp:include page="/View/header.jsp">
    <jsp:param name="title" value="Trang chủ Quản lý Gym" />
</jsp:include>

<h1>Chào mừng đến với Hệ thống Quản lý Gym</h1>
<ul>
    <li><a href="${pageContext.request.contextPath}/members">1. Danh sách Toàn bộ Hội viên</a></li>
    <li><a href="${pageContext.request.contextPath}/members/active">2. Danh sách Hội viên Đang hoạt động</a></li>
    <li><a href="${pageContext.request.contextPath}/classes">3. Danh sách Toàn bộ Lớp tập</a></li>
    <li><a href="${pageContext.request.contextPath}/classes/by-category?category">4. Lớp tập theo Danh mục (ví dụ: Yoga)</a></li>
    <li><a href="${pageContext.request.contextPath}/classes/available">5. Danh sách Lớp còn chỗ trống</a></li>
    <li><a href="${pageContext.request.contextPath}/members/detail?id=1">6. Chi tiết Hội viên (ví dụ: ID 1)</a></li>
    <li><a href="${pageContext.request.contextPath}/classes/detail?id=1">7. Chi tiết Lớp tập và Học viên (ví dụ: ID 1)</a></li>
    <li><a href="${pageContext.request.contextPath}/register">8. Đăng ký Lớp tập mới cho Hội viên</a></li>
    <li><a href="${pageContext.request.contextPath}/statistics/classes/by-category">9. Thống kê số Lớp theo từng Danh mục</a></li>
    <li><a href="${pageContext.request.contextPath}/members/top-attendance">10. Top 5 Hội viên có số buổi tham gia cao nhất</a></li>
</ul>

<%@ include file="/View/footer.jsp" %>
