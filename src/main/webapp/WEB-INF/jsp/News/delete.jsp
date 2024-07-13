<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="news" scope="request" type="java.util.List<com.entity.News>"/>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <c:set var="imgPath" value="/resource/static/img/"/>
    <meta charset="UTF-8">
    <style>
        /* 针对整个body的基础样式 */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* 针对主体内容的特定样式 */
        .content-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh; /* 80vh可以确保内容在顶部20%位置下方 */
            position: relative;
        }

        .content {
            width: 60%;
            position: absolute;
            top: 20%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        button {
            padding: 5px 10px;
            background-color: #f44336;
            border-radius: 5px;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #d32f2f;
        }

    </style>
    <title>deleteNews</title>
</head>

<body>
<%@include file="../head.jsp" %>

<div class="content-wrapper">
    <div class="content">
        <table>
            <tr>
                <th>新闻ID</th>
                <th>新闻标题</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${news}" var="news">
                <tr>
                    <td>${news.id}</td>
                    <td>${news.title}</td>
                    <td>
                        <form action="deleteNews" method="post">
                            <input type="hidden" name="id" value="${news.id}">
                            <button type="submit">删除</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
