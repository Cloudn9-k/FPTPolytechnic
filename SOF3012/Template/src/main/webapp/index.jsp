<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>


























<%--&lt;%&ndash; File: src/main/webapp/View/home.jsp &ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--&lt;%&ndash; Thay đổi từ include directive sang include action tag để có thể truyền param &ndash;%&gt;--%>
<%--<jsp:include page="/View/header.jsp">--%>
<%--    <jsp:param name="title" value="Trang chủ Quản lý Gym" />--%>
<%--</jsp:include>--%>

<%--<h1>Chào mừng đến với Hệ thống Quản lý Gym</h1>--%>
<%--<ul>--%>
<%--    <li><a href="${pageContext.request.contextPath}/members">1. Danh sách Toàn bộ Hội viên</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/members/active">2. Danh sách Hội viên Đang hoạt động</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/classes">3. Danh sách Toàn bộ Lớp tập</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/classes/by-category?category">4. Lớp tập theo Danh mục (ví dụ: Yoga)</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/classes/available">5. Danh sách Lớp còn chỗ trống</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/members/detail?id=1">6. Chi tiết Hội viên (ví dụ: ID 1)</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/classes/detail?id=1">7. Chi tiết Lớp tập và Học viên (ví dụ: ID 1)</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/register">8. Đăng ký Lớp tập mới cho Hội viên</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/statistics/classes/by-category">9. Thống kê số Lớp theo từng Danh mục</a></li>--%>
<%--    <li><a href="${pageContext.request.contextPath}/members/top-attendance">10. Top 5 Hội viên có số buổi tham gia cao nhất</a></li>--%>
<%--</ul>--%>


















<%--&lt;%&ndash;<%@ include file="/View/footer.jsp" %>&ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Chi tiết Lớp học</title>--%>
<%--    <style>--%>
<%--
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Chi tiết Lớp học</h1>--%>

<%--<c:if test="${not empty errorMessage}">--%>
<%--    <p class="error-message"><c:out value="${errorMessage}"/></p>--%>
<%--</c:if>--%>

<%--<c:choose>--%>
<%--    <c:when test="${not empty classDetail}">--%>
<%--        <div class="class-info">--%>
<%--            <h2>Thông tin Lớp học: <c:out value="${classDetail.className}"/></h2>--%>
<%--            <p><strong>ID Lớp:</strong> <c:out value="${classDetail.id}"/></p>--%>
<%--            <p><strong>Giảng viên:</strong> <c:out value="${classDetail.trainerId.fullName}"/></p>--%>
<%--            <p><strong>Danh mục:</strong> <c:out value="${classDetail.category}"/></p>--%>
<%--            <p><strong>Lịch trình:</strong> <c:out value="${classDetail.scheduleTime}"/></p>--%>
<%--            <p><strong>Số lượng tối đa:</strong> <c:out value="${classDetail.maxParticipants}"/></p>--%>
<%--                &lt;%&ndash; Thêm các thông tin khác của lớp học nếu cần &ndash;%&gt;--%>
<%--        </div>--%>

<%--        <div class="member-list">--%>
<%--            <h2>Học viên đã đăng ký (<c:out value="${not empty registeredMembers ? registeredMembers.size() : 0}"/> người)</h2>--%>
<%--            <c:choose>--%>
<%--                <c:when test="${not empty registeredMembers}">--%>
<%--                    <table class="member-table">--%>
<%--                        <thead>--%>
<%--                        <tr>--%>
<%--                            <th>Mã Học viên</th>--%>
<%--                            <th>Họ và tên</th>--%>
<%--                            <th>Email</th>--%>
<%--                            <th>Điện thoại</th>--%>
<%--                            <th>Ngày đăng ký</th>--%>
<%--                            <th>Trạng thái điểm danh</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <c:forEach var="reg" items="${registeredMembers}">--%>
<%--                            <tr>--%>
<%--                                <td><c:out value="${reg.member.memberCode}"/></td>--%>
<%--                                <td><c:out value="${reg.member.fullName}"/></td>--%>
<%--                                <td><c:out value="${reg.member.email}"/></td>--%>
<%--                                <td><c:out value="${reg.member.phone}"/></td>--%>
<%--                                <td><c:out value="${reg.registerDate}"/></td>--%>
<%--                                <td><c:out value="${reg.attendanceStatus}"/></td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <p class="no-data">Chưa có học viên nào đăng ký lớp này.</p>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--    </c:when>`--%>
<%--    <c:otherwise>--%>
<%--        <p class="no-data">Không tìm thấy thông tin lớp học.</p>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>

<%--<p><a href="/">Quay lại Trang chủ</a></p>--%>
<%--</body>--%>
<%--</html>--%>