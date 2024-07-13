<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="">
    <meta charset="UTF-8">
    <c:set var="cssPath" value="/resource/css/"/>
    <link rel="stylesheet" href="<c:url value="${cssPath}/index.css"/>">
    <title>Title</title>
</head>
<body>
<div class="header">
    <img src="<c:url value="${imgPath}/logo_school.png"/>" alt="当前路径未找到图片">
    <img src="<c:url value="${imgPath}/copyright01-2019.png"/>" width="300px" height="auto" alt="当前路径未找到资源">
    <nav class="navbar">
        <ul>
            <li><a href="">首页</a></li>
            <li><a href="#">专业介绍</a>
                <ul class="hide">
                    <li><a href="Introduction">专业简介</a></li>
                    <li><a href="direction">方向简介</a></li>
                </ul>
            </li>
            <li><a href="#">实验室</a>
                <ul class="hide">
                    <li><a href="#">912A</a></li>
                    <li><a href="#">903ACM</a></li>
                    <li><a href="#">927实验室</a></li>
                </ul>
            </li>
            <li><a href="https://ccec.nefu.edu.cn/szdw/rjgc.htm" target="_blank">教师队伍</a>
                <ul class="hide">
                    <li><a href="https://ccec.nefu.edu.cn/info/1040/1757.htm" target="_blank">教授</a></li>
                    <li><a href="https://ccec.nefu.edu.cn/info/1040/2528.htm" target="_blank">副教授</a></li>
                    <li><a href="https://ccec.nefu.edu.cn/info/1040/1764.htm" target="_blank">讲师</a></li>
                </ul>
            </li>
            <li><a href="Employment">就业指南</a></li>
            <li><a href="login" target="_blank">管理入口</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
