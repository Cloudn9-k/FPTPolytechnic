<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Quản lý Sách - Admin</title>
</head>
<body>
<h2>Quản lý Sách</h2>

<h3>Thêm sách mới</h3>
<form action="${pageContext.request.contextPath}/admin/books/add" method="post">
  Tiêu đề: <input type="text" name="title" required><br>
  Tác giả: <input type="text" name="author" required><br>
  Số lượng: <input type="number" name="quantity" required min="0"><br>
  <button type="submit">Thêm sách</button>
</form>

<hr>

<h3>Danh sách sách</h3>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Tiêu đề</th>
    <th>Tác giả</th>
    <th>Số lượng</th>
    <th>Hành động</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${books}" var="book">
    <tr>
      <td>${book.id}</td>
      <td>${book.title}</td>
      <td>${book.author}</td>
      <td>${book.quantity}</td>
      <td>
        <a href="#" onclick="showUpdateForm(${book.id}, '${book.title}', '${book.author}', ${book.quantity})">Sửa</a>
        <form action="${pageContext.request.contextPath}/admin/books/delete" method="post" style="display:inline;">
          <input type="hidden" name="id" value="${book.id}">
          <button type="submit" onclick="return confirm('Bạn có chắc muốn xóa?');">Xóa</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<hr>

<div id="updateForm" style="display:none;">
  <h3>Cập nhật sách</h3>
  <form action="${pageContext.request.contextPath}/admin/books/update" method="post">
    <input type="hidden" name="id" id="update_id">
    Tiêu đề: <input type="text" name="title" id="update_title" required><br>
    Tác giả: <input type="text" name="author" id="update_author" required><br>
    Số lượng: <input type="number" name="quantity" id="update_quantity" required min="0"><br>
    <button type="submit">Cập nhật</button>
  </form>
</div>

<script>
  function showUpdateForm(id, title, author, quantity) {
    document.getElementById('update_id').value = id;
    document.getElementById('update_title').value = title;
    document.getElementById('update_author').value = author;
    document.getElementById('update_quantity').value = quantity;
    document.getElementById('updateForm').style.display = 'block';
  }
</script>
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