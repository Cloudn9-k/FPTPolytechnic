<%-- upload.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 7 - Bài 2</title>
</head>
<body>
<h1>Bài 2: Upload file bằng AJAX</h1>
<input type="file" id="fileInput">
<button onclick="uploadFile()">Upload</button>

<script>
    function uploadFile() {
        const fileInput = document.getElementById('fileInput');
        const file = fileInput.files[0];

        if (!file) {
            console.error("Vui lòng chọn một file.");
            return;
        }

        const formData = new FormData();
        formData.append('file', file);

        // Sửa lại URL để sử dụng Context Path của dự án
        const url = '<%= request.getContextPath() %>/ajax2';

        fetch(url, {
            method: 'POST',
            body: formData
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Lỗi khi upload: ' + response.statusText);
                }
                return response.json();
            })
            .then(data => {
                console.log('Thông tin file từ server:', data);
            })
            .catch(error => console.error('Lỗi:', error));
    }
</script>
</body>
</html>