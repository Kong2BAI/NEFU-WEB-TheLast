<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <c:set var="imgPath" value="/resource/static/img/"/>
    <c:set var="cssPath" value="/resource/css/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <!-- 引入Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<c:url value="${cssPath}/index.css"/>">


    <title>首页</title>
</head>
<body>

<div>
<%@include file="head.jsp"%>
</div>

<!--  轮播图  -->

<div id="carouselExampleIndicators" class="carousel slide carousel-container" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<c:url value='${imgPath}/pic_02.jpg'/>" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value='${imgPath}/pic_05.jpg'/>" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value='${imgPath}/pic_04.jpg'/>" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value='${imgPath}/pic_00.jpg'/>" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value='${imgPath}/pic_03.jpg'/>" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value='${imgPath}/pic_01.jpg'/>" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<%@include file="News/News.jsp"%>

<!-- footer   -->
    <img src="<c:url value='${imgPath}/footer-bg-2019.png'/>" style="width: 100%; left: 50%" alt="">
    <%@include file="footer.jsp"%>

</body>
</html>
