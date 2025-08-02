<%-- File: src/main/webapp/View/_header.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.title}</title>
    <style>
        body { font-family: 'Inter', sans-serif; margin: 20px; background-color: #f4f7f6; color: #333; }
        h1, h2 { color: #2c3e50; text-align: center; margin-bottom: 30px; }
        .container { max-width: 900px; margin: auto; background-color: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.05); }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-radius: 8px; overflow: hidden; }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #4CAF50; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        tr:hover { background-color: #e9e9e9; }
        a { color: #007bff; text-decoration: none; }
        a:hover { text-decoration: underline; }
        .back-link { display: block; text-align: center; margin-top: 30px; font-size: 1.1em; }
        .message { margin-top: 20px; padding: 10px; border-radius: 5px; text-align: center; }
        .message.success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .message.error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        form { display: flex; flex-direction: column; gap: 15px; }
        label { font-weight: bold; margin-bottom: 5px; color: #555; }
        select, input[type='date'], input[type='text'], input[type='number'] { padding: 10px; border: 1px solid #ddd; border-radius: 5px; font-size: 1em; }
        button { background-color: #4CAF50; color: white; padding: 12px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 1.1em; transition: background-color 0.3s ease; }
        button:hover { background-color: #45a049; }
    </style>
</head>
<body>
<div class="container">
