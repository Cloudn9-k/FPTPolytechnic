<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản lý Sản Phẩm</title>
</head>
<body>
<div class="form-container">
    <c:if test="${sanPhamDetail == null}">
        <h2>Thêm mới Sản Phẩm</h2>
        <form action="${pageContext.request.contextPath}/san-pham/add" method="post">
            Mã SP: <input type="text" name="ma" required><br>
            Tên SP: <input type="text" name="ten" required><br>
            Mô tả: <input type="text" name="mota" required><br>
            Website: <input type="text" name="website" required><br>
            Giá Bán: <input type="number" name="gia_ban" step="0.01" required><br>
            Số Lượng: <input type="number" name="so_luong" required><br>
            Trạng thái: <input type="number" name="trang_thai" required><br>
            Loại SP:
            <select name="id_loai_sp">
                <c:forEach items="${loaiSps}" var="loai">
                    <option value="${loai.id}">${loai.ten}</option>
                </c:forEach>
            </select><br>
            <button type="submit">Thêm</button>
        </form>
    </c:if>

    <c:if test="${sanPhamDetail != null}">
        <h2>Cập nhật Sản Phẩm</h2>
        <form action="${pageContext.request.contextPath}/san-pham/update" method="post">
            <input type="hidden" name="id" value="${sanPhamDetail.id}">
            Mã SP: <input type="text" name="ma" value="${sanPhamDetail.ma}" required><br>
            Tên SP: <input type="text" name="ten" value="${sanPhamDetail.ten}" required><br>
            Mô tả: <input type="text" name="mota" value="${sanPhamDetail.moTa}" required><br>
            Website: <input type="text" name="website" value="${sanPhamDetail.website}" required><br>
            Giá Bán: <input type="number" name="gia_ban" step="0.01" value="${sanPhamDetail.giaBan}" required><br>
            Số Lượng: <input type="number" name="so_luong" value="${sanPhamDetail.soLuong}" required><br>
            Trạng thái: <input type="number" name="trang_thai" value="${sanPhamDetail.trangThai}" required><br>
            Loại SP:
            <select name="id_loai_sp">
                <c:forEach items="${loaiSps}" var="loai">
                    <option value="${loai.id}" <c:if test="${loai.id == sanPhamDetail.loaiSp.id}">selected</c:if>>${loai.ten}</option>
                </c:forEach>
            </select><br>
            <button type="submit">Cập nhật</button>
            <a href="${pageContext.request.contextPath}/san-pham/hien-thi">Hủy</a>
        </form>
    </c:if>
</div>

<hr>

<h2>Danh sách Sản Phẩm</h2>
<table class="table-container">
    <thead>
    <tr>
        <th>ID</th>
        <th>Mã SP</th>
        <th>Tên SP</th>
        <th>Mô tả</th>
        <th>Website</th>
        <th>Giá Bán</th>
        <th>Số Lượng</th>
        <th>Tên Loại SP</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sanPhams}" var="sp">
        <tr>
            <td>${sp.id}</td>
            <td>${sp.ma}</td>
            <td>${sp.ten}</td>
            <td>${sp.moTa}</td>
            <td>${sp.website}</td>
            <td>${sp.giaBan}</td>
            <td>${sp.soLuong}</td>
            <td>${sp.loaiSp.ten}</td>
            <td>${sp.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/san-pham/detail?id=${sp.id}">Sửa</a>
                <a href="${pageContext.request.contextPath}/san-pham/delete?id=${sp.id}" onclick="return confirm('Bạn có chắc muốn xóa không?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>