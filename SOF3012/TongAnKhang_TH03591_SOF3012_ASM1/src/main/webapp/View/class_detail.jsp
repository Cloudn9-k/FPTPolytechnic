<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết Lớp học</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .class-info, .member-list {
            border: 1px solid #ddd;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        .class-info h2, .member-list h2 {
            color: #333;
            margin-top: 0;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }
        .class-info p { margin-bottom: 8px; }
        .member-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        .member-table th, .member-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .member-table th {
            background-color: #eef;
            color: #333;
        }
        .no-data { color: #999; text-align: center; padding: 20px; }
        .error-message { color: red; font-weight: bold; }
    </style>
</head>
<body>
<h1>Chi tiết Lớp học</h1>

<c:if test="${not empty errorMessage}">
    <p class="error-message"><c:out value="${errorMessage}"/></p>
</c:if>

<c:choose>
    <c:when test="${not empty classDetail}">
        <div class="class-info">
            <h2>Thông tin Lớp học: <c:out value="${classDetail.className}"/></h2>
            <p><strong>ID Lớp:</strong> <c:out value="${classDetail.id}"/></p>
            <p><strong>Giảng viên:</strong> <c:out value="${classDetail.trainerId.fullName}"/></p>
            <p><strong>Danh mục:</strong> <c:out value="${classDetail.category}"/></p>
            <p><strong>Lịch trình:</strong> <c:out value="${classDetail.scheduleTime}"/></p>
            <p><strong>Số lượng tối đa:</strong> <c:out value="${classDetail.maxParticipants}"/></p>
                <%-- Thêm các thông tin khác của lớp học nếu cần --%>
        </div>

        <div class="member-list">
            <h2>Học viên đã đăng ký (<c:out value="${not empty registeredMembers ? registeredMembers.size() : 0}"/> người)</h2>
            <c:choose>
                <c:when test="${not empty registeredMembers}">
                    <table class="member-table">
                        <thead>
                        <tr>
                            <th>Mã Học viên</th>
                            <th>Họ và tên</th>
                            <th>Email</th>
                            <th>Điện thoại</th>
                            <th>Ngày đăng ký</th>
                            <th>Trạng thái điểm danh</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="reg" items="${registeredMembers}">
                            <tr>
                                <td><c:out value="${reg.member.memberCode}"/></td>
                                <td><c:out value="${reg.member.fullName}"/></td>
                                <td><c:out value="${reg.member.email}"/></td>
                                <td><c:out value="${reg.member.phone}"/></td>
                                <td><c:out value="${reg.registerDate}"/></td>
                                <td><c:out value="${reg.attendanceStatus}"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <p class="no-data">Chưa có học viên nào đăng ký lớp này.</p>
                </c:otherwise>
            </c:choose>
        </div>
    </c:when>`
    <c:otherwise>
        <p class="no-data">Không tìm thấy thông tin lớp học.</p>
    </c:otherwise>
</c:choose>

<p><a href="/">Quay lại Trang chủ</a></p>
</body>
</html>