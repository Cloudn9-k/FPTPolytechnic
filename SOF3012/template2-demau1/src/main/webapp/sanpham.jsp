<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamthihang
  Date: 9/8/25
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sản phẩm</title>
</head>
<body>
<h2> quản lý sản phẩm</h2>
<form action="${sanPhamDetail !=null ? '/sanpham/update':'/san-pham/add'}" method="post">
    <c:if test="${sanPhamDetail !=null}">
        <input type="hidden" name="id" value="${sanPhamDetail.id}">
    </c:if>
    Mã <input type="text" name="ma" value="${sanPhamDetail.ma}" required><br>
    tên <input type="text" name="ten" value="${sanPhamDetail.ten}" required><br>
    mô tả <input type="text" name="mota" value="${sanPhamDetail.mota}" required><br>
    website <input type="text" name="website" value="${sanPhamDetail.website}" required><br>
    giá <input type="text" name="giaBan" value="${sanPhamDetail.giaBan}" required><br>
    số lượng <input type="text" name="soLuong" value="${sanPhamDetail.soLuong}" required><br>
    trạng thái <input type="text" name="trangThai" value="${sanPhamDetail.trangThai}" required><br>
    Loại sản phẩm:
    <select name="idLoaiSp">
        <c:forEach items="${listLoaiSp}" var="loaiSP">
            <option value="${loaiSP.id}"
            ${sanPhamDetail.loaiSp.id == loaiSP.id ? "selected" : ""}>
                ${loaiSP.ten}
            </option>
        </c:forEach>
    </select><br>
    <button type="submit">${sanPhamDetail !=null ? "cập nhat" : "thêm"}</button>
    <hr>
    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>id</th>
            <th>mã sp</th>
            <th> tên sp</th>
            <th>mo ta</th>
            <th>website</th>
            <th> giá bán</th>
            <th> số lượng</th>
            <th>trạng thái</th>
            <th> loại sp</th>
            <th> hành động</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listSanPham}" var="sp">
            <tr>
                <td>${(currentPage -1)*5 + loop.index +1}</td>
                <td>${sp.id}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>${sp.mota}</td>
                <td>${sp.website}</td>
                <td>${sp.giaBan}</td>
                <td>${sp.soLuong}</td>
                <td>${sp.trangThai}</td>
                <td>${sp.loaiSp.ten}</td>
                <td>
                    <a href="/san-pham/details?id=${sp.id}">xem/sửa</a>
                    <a href="/san-pham/delete?id=${sp.id}">xoá</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <c:if test="${totalPages>1}">
            <c:forEach begin="1" end="${totalPages}" var="page">
                <a href="/san-pham/hien-thi?page=${page}">${page}</a>
            </c:forEach>
        </c:if>
    </div>
</form>
</body>
</html>
