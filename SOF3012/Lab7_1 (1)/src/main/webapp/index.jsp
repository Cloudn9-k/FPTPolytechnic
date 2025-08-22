<%-- index.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 7 - Bài 1</title>
</head>
<body>
<h1>Bài 1: Giao tiếp AJAX cơ bản</h1>
<button onclick="fetchData()">Lấy dữ liệu</button>
<script>
    function fetchData() {
        fetch("http://localhost:8080/TH03591/ajax1") // URL servlet không đổi
            .then(response => response.json())
            .then(data => {
                console.log('Dữ liệu từ server:', data);
            })
            .catch(error => console.error('Lỗi:', error));
    }
</script>
</body>
</html>