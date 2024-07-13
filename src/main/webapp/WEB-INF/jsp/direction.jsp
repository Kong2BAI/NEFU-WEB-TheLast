<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <c:set var="imgPath" value="/resource/static/img/"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <meta charset="UTF-8">
    <title>方向简介</title>
</head>
<body>
<%@ include file="head.jsp" %>
<div class="container">
    <h1 class="text-center" style="margin-top: 150px; font-size: 3em">软件工程方向简介</h1>

    <div class="content">
        <p style="font-size: 2em">
            示例一：程序设计基础（64）、面向对象程序设计（64）、软件工程导论（64）、
            离散结构（72）、数据结构与算法（64）、工程经济学（32）、团队激励与沟通
            （24）、软件工程职业实践（16）、计算机系统基础（64）、操作系统（64）、
            数据库概论（64）、网络及其计算（64）、人机交互的软件工程方法（48）、软件
            工程综合实践（96）、软件构造（48）、软件设计与体系结构（48）、软件质量保
            证与测试（48）、软件需求分析（40）、软件项目管理（40）；
        </p>
        <p style="font-size: 2em">
            示例二：程序设计基础（64）、面向对象程序设计（64）、软件工程导论（64）、
            离散结构（72）、数据结构与算法（64）、工程经济学（32）、团队激励与沟通（24）
            、软件工程职业实践（16）、计算机系统基础（64）、操作系统（64）、数据库概论（64）
            、网络及其计算（64）、人机交互的软件工程方法（48）、软件工程综合实践（96）
            、大型软件系统设计与体系结构（48）、软件测试（48）、软件详细设计（48）、
            软件工程的形式化方法（40）、软件过程与管理（40）。
        </p>
        <p style="font-size: 2em">
            示例三：软件工程与计算I（64）、软件工程与计算II（64）、软件工程与计算III（64）
            、离散结构（72）、数据结构与算法（64）、工程经济学（32）、团队激励与沟通（24）
            、软件工程职业实践（16）、计算机系统基础（64）、操作系统（64）、数据库概论（64）、
            网络及其计算（64）、人机交互的软件工程方法（48）、软件工程综合实践（96）、软件构造（48）
            、软件设计与体系结构（48）、软件质量保证与测试（48）、软件需求分析（40）、
            软件项目管理（40）；
        </p>
        <p style="font-size: 2em">
            示例三：软件工程与计算I（64）、软件工程与计算II（64）、软件工程与计算III（64）、
            离散结构（72）、数据结构与算法（64）、工程经济学（32）、团队激励与沟通（24）
            、软件工程职业实践（16）、计算机系统基础（64）、操作系统（64）、数据库概论（64）、
            网络及其计算（64）、人机交互的软件工程方法（48）、软件工程综合实践（96）、软件构造（48）、
            软件设计与体系结构（48）、软件质量保证与测试（48）、软件需求分析（40）、软件项目管理（40）；
        </p>
    </div>
</div>

<!-- footer   -->
<img src="<c:url value='${imgPath}/footer-bg-2019.png'/>" style="width: 100%; left: 50%" alt="">
<%@include file="footer.jsp"%>
</body>
</html>
