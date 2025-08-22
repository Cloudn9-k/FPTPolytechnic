<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamthihang
  Date: 21/8/25
  Time: 07:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý nhà và chủ nhà</title>
</head>
<body>
<div class="form-container">
    <h2>Thêm mới Nhà</h2>
    <form action="${pageContext.request.contextPath}/nha/add" method="post">
        Địa chỉ: <input type="text" name="dia_chi" required><br>
        Loại nhà: <input type="text" name="loai_nha" required><br>
        Giá tiền: <input type="number" name="gia_tien" step="0.01" required><br>
        Chủ nhà:
        <select name="chu_nha_id" required>
            <c:forEach items="${chuNhaList}" var="cn">
                <option value="${cn.id}">${cn.ten}</option>
            </c:forEach>
        </select><br>
        <button type="submit">Thêm</button>
    </form>
</div>

<hr>

<h2>Danh sách Nhà</h2>
<a href="${pageContext.request.contextPath}/nha/hien-thi?sort=true">
    <button>Sắp xếp theo Mã Chủ Nhà</button>
</a>
<br><br>

<table class="table-container">
    <thead>
    <tr>
        <th>ID</th>
        <th>Địa chỉ</th>
        <th>Loại nhà</th>
        <th>Giá tiền</th>
        <th>Tên Chủ Nhà</th>
        <th>SĐT Chủ Nhà</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${nhaList}" var="nha">
        <tr>
            <td>${nha.id}</td>
            <td>${nha.diaChi}</td>
            <td>${nha.loaiNha}</td>
            <td>${nha.giaTien}</td>
            <td>${nha.chuNha.ten}</td>
            <td>${nha.chuNha.soDienThoai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/nha/remove?id=${nha.id}" onclick="return confirm('Bạn có chắc muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
