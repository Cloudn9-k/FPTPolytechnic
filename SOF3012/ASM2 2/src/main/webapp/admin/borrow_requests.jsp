<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>Danh sách yêu cầu mượn</title>
</head>
<body>
<h2>Danh sách yêu cầu mượn</h2>
<table border="1">
  <thead>
  <tr>
    <th>Sinh viên</th>
    <th>Sách</th>
    <th>Ngày gửi</th>
    <th>Trạng thái</th>
    <th>Hành động</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${requests}" var="request">
    <tr>
      <td>${request.user.name}</td>
      <td>${request.book.title}</td>
      <td><fmt:formatDate value="${request.requestDate}" pattern="dd/MM/yyyy HH:mm"/></td>
      <td>${request.status}</td>
      <td>
        <c:if test="${request.status eq 'PENDING'}">
          <form action="approve" method="post" style="display:inline;">
            <input type="hidden" name="requestId" value="${request.id}">
            <button type="submit" onclick="return confirm('Bạn có chắc muốn phê duyệt?');">Duyệt</button>
          </form>
          <form action="reject" method="post" style="display:inline;">
            <input type="hidden" name="requestId" value="${request.id}">
            <button type="submit" onclick="return confirm('Bạn có chắc muốn từ chối?');">Từ chối</button>
          </form>
        </c:if>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<br>
<a href="books.jsp">danh sách sách</a>
<a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
</body>
</html>