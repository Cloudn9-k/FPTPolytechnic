<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamthihang
  Date: 3/8/25
  Time: 09:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Bảng product</h1>
<%--CREATE TABLE Products (--%>
<%--ProductID INT PRIMARY KEY IDENTITY(1,1),--%>
<%--ProductName NVARCHAR(100),--%>
<%--Category NVARCHAR(50),--%>
<%--Supplier NVARCHAR(100),--%>
<%--QuantityInStock INT,--%>
<%--UnitPrice DECIMAL(10, 2),--%>
<%--ReorderLevel INT,--%>
<%--Discontinued BIT DEFAULT 0,--%>
<%--Description NVARCHAR(MAX),--%>
<%--ManufactureDate DATE,--%>
<%--ExpiryDate DATE,--%>
<%--CreatedAt DATETIME DEFAULT GETDATE(),--%>
<%--Barcode NVARCHAR(50)--%>
<%--);--%>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>title</th>
        <th>author</th>
        <th>publisher</th>
        <th>Category</th>
        <th>quantity in stock</th>
        <th>price</th>
        <th>is available</th>
        <th>summary</th>
        <th>publishedDate</th>
        <th>returnDate</th>
        <th>created at</th>
        <th>isbn</th>
    </tr>
    </thead>
   <tbody>
   <c:forEach var="book" items="${books}">
       <tr>
           <td><c:out value="${book.id}"/></td>
           <td><c:out value="${book.title}"/></td>
           <td><c:out value="${book.author}"/></td>
           <td><c:out value="${book.category}"/></td>
           <td><c:out value="${book.publisher}"/></td>
           <td><c:out value="${book.quantityInStock}"/></td>
           <td><c:out value="${book.price}"/></td>
           <td><c:out value="${book.isAvailable}"/></td>
           <td><c:out value="${book.summary}"/></td>
           <td><c:out value="${book.publishedDate}"/></td>
           <td><c:out value="${book.returnDueDate}"/></td>
           <td><c:out value="${book.createdAt}"/></td>
           <td><c:out value="${book.isbn}"/></td>
       </tr>
   </c:forEach>
   </tbody>
</table>
</body>
</html>
