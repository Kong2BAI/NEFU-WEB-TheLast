<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="news" scope="request" type="com.entity.News"/>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <c:set var="imgPath" value="/resource/static/img/"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <title>详细信息</title>
</head>
<body>
<%@ include file="../head.jsp" %>

<div class="container">
    <h1 class="text-center" style="margin-top: 150px; font-size: 3em">${news.title}</h1>
    <div class="content">
        <p style="font-size: 2em">
            ${news.content}
        </p>
    </div>
</div>

</body>
</html>
