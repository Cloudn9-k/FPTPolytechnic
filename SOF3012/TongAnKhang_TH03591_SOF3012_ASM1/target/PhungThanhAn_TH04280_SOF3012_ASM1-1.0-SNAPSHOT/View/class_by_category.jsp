<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lớp học theo Danh mục</title>
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
<h1>Các Lớp trong Danh mục: <c:out value="${category != null && !category.isEmpty() ? category : 'Tất cả Lớp học'}"/></h1>

<div class="class-list">
    <c:choose>
        <c:when test="${not empty classes}">
            <c:forEach var="classItem" items="${classes}">
                <div class="class-item">
                    <h3><c:out value="${classItem.className}"/></h3> <%-- Sử dụng className --%>
                    <p><strong>Giảng viên:</strong> <c:out value="${classItem.trainerId.fullName}"/></p> <%-- Hiển thị tên trainer --%>
                    <p><strong>Danh mục:</strong> <c:out value="${classItem.category}"/></p>
                    <p><strong>Lịch trình:</strong> <c:out value="${classItem.scheduleTime}"/></p>
                    <p><strong>Số lượng tối đa:</strong> <c:out value="${classItem.maxParticipants}"/></p>
                        <%-- Thêm các chi tiết lớp học khác nếu cần --%>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p class="no-classes">Không tìm thấy lớp học nào cho danh mục này hoặc danh mục chưa được chỉ định.</p>
        </c:otherwise>
    </c:choose>
</div>

<p><a href="/TH03591">Quay lại Trang chủ</a></p>
</body>
</html>