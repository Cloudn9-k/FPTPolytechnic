<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Lớp học còn trống</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .class-list { margin-top: 20px; }
        .class-item { border: 1px solid #ddd; padding: 15px; margin-bottom: 10px; border-radius: 5px; }
        .class-item h3 { margin-top: 0; color: #333; }
        .class-item p { color: #666; }
        .no-classes { color: #999; }
    </style>
</head>
<body>
<h1>Danh sách Lớp học còn trống</h1>

<div class="class-list">
    <c:choose>
        <c:when test="${not empty availableClasses}">
            <c:forEach var="classItem" items="${availableClasses}">
                <div class="class-item">
                    <h3><c:out value="${classItem.className}"/></h3>
                    <p><strong>Giảng viên:</strong> <c:out value="${classItem.trainerId.fullName}"/></p>
                    <p><strong>Danh mục:</strong> <c:out value="${classItem.category}"/></p>
                    <p><strong>Lịch trình:</strong> <c:out value="${classItem.scheduleTime}"/></p>
                    <p><strong>Số lượng tối đa:</strong> <c:out value="${classItem.maxParticipants}"/></p>
                        <%-- Bạn có thể thêm các thông tin khác của lớp học tại đây --%>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p class="no-classes">Hiện không có lớp học nào còn chỗ trống.</p>
        </c:otherwise>
    </c:choose>
</div>

<p><a href="/">Quay lại Trang chủ</a></p>
</body>
</html>