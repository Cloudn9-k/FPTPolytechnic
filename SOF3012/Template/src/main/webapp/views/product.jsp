<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <h1>Product</h1>

   <table border="1">
     <thead>
     <tr>
       <th>ID</th>
       <th>Tên sản phẩm</th>
       <th>Danh mục</th>
       <th>Nhà cung cấp</th>
       <th>Tồn kho</th>
       <th>Giá</th>
       <th>Ngưỡng đặt lại</th>
       <th>Ngừng bán</th>
       <th>Mô tả</th>
       <th>Ngày sản xuất</th>
       <th>Ngày hết hạn</th>
       <th>Barcode</th>
     </tr>
     </thead>
     <tbody>
     <c:forEach var="product" items="${products}">
       <tr>
         <td><c:out value="${product.id}"/></td>
         <td><c:out value="${product.productName}"/></td>
         <td><c:out value="${product.category}"/></td>
         <td><c:out value="${product.supplier}"/></td>
         <td><c:out value="${product.quantityInStock}"/></td>
         <td><c:out value="${product.unitPrice}"/></td>
         <td><c:out value="${product.reorderLevel}"/></td>
         <td><c:out value="${product.discontinued}"/></td>
         <td><c:out value="${product.description}"/></td>
         <td><c:out value="${product.manufactureDate}"/></td>
         <td><c:out value="${product.expiryDate}"/></td>
         <td><c:out value="${product.barcode}"/></td>
       </tr>
     </c:forEach>
     </tbody>
   </table>
<%-- <c:if test="${empty products}">--%>
<%--   <p>Không có sản phẩm nào để hiển thị.</p>--%>
<%-- </c:if>--%>
 <p><a href="/">Quay lại Trang chủ</a></p>
</body>
</html>
