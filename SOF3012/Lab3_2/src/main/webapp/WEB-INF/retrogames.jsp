<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Retro Game Collection</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 80%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .multiplayer-game { color: blue; font-weight: bold; }
        .multiplayer-icon::before { content: "👥 "; }
    </style>
</head>
<body>
<h1>Retro Game Collection</h1>

<table>
    <thead>
    <tr>
        <th>Title</th>
        <th>Console</th>
        <th>Release Year</th>
        <th>Rating</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="game" items="${games}">
        <tr>
            <td>
                <c:out value="${game.title}" />
                <c:if test="${game.isMultiplayer}">
                    <span class="multiplayer-game multiplayer-icon">(Multiplayer)</span>
                </c:if>
            </td>
            <td><c:out value="${game.console}" /></td>
            <td><c:out value="${game.releaseYear}" /></td>
            <td><c:out value="${game.rating}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>