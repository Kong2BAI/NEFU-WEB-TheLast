<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="news" scope="request" type="java.util.List<com.entity.News>"/>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <c:set var="cssPath" value="/resource/css/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="${cssPath}/News.css"/>">
    <title></title>


</head>

<body>
<a href="https://news.nefu.edu.cn/" target="_blank" class="more">更多新闻</a>
<hr>
<div class="bottom">
    <div class="news-page">

        <h1>NEFU NOTICES</h1>
        <div class="news-title">

            <c:forEach items="${news}" var="news">
                <a href="NewsDetails?id=${news.id}">
                    <h4 class="title-left" style="margin-top: 50px; font-size: 3em">${news.title}</h4>
                </a>
            </c:forEach>

        </div>
        <div style="text-align: center;margin-top: 30px;margin-bottom: 30px">
            <a href="addNews" class="submit">
                <button type="submit">添加新闻</button>
            </a>
        </div>
        <div style="text-align: center;margin-top: 30px;margin-bottom: 30px">
            <a href="deleteNews" class="submit">
                <button type="submit">删除新闻</button>
            </a>
        </div>
    </div>
</div>
</body>
</html>
