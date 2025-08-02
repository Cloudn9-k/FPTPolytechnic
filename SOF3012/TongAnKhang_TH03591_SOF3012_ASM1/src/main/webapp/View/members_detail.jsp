<%-- File: src/main/webapp/View/member_detail.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Chi tiết Hội viên" />
</jsp:include>

<h1>Thông tin chi tiết Hội viên</h1>

<c:choose>
    <c:when test="${not empty member}">
        <p><strong>ID:</strong> <c:out value="${member.id}"/></p>
        <p><strong>Mã thành viên:</strong> <c:out value="${member.memberCode}"/></p>
        <p><strong>Họ và Tên:</strong> <c:out value="${member.fullName}"/></p>
        <p><strong>Email:</strong> <c:out value="${member.email}"/></p>
        <p><strong>Điện thoại:</strong> <c:out value="${member.phone}"/></p>
        <p><strong>Ngày sinh:</strong> <c:out value="${member.dob}"/></p>
        <p><strong>Ngày tham gia:</strong> <c:out value="${member.joinDate}"/></p>
        <p><strong>Trạng thái:</strong> <c:out value="${member.status}"/></p>
    </c:when>
    <c:otherwise>
        <p>Không tìm thấy hội viên.</p>
        <c:if test="${not empty errorMessage}">
            <p style="color: red;"><c:out value="${errorMessage}"/></p>
        </c:if>
    </c:otherwise>
</c:choose>
<p class="back-link"><a href="${pageContext.request.contextPath}/members">Quay lại danh sách Hội viên</a></p>

<%@ include file="footer.jsp" %>
