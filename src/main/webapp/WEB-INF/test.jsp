<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<c:set var="imgpath" value="/resource/static/img/pic_03.jpg"/>

<img src="<c:url value="${imgpath}"/>" alt="未找到图像">
</body>
</html>
