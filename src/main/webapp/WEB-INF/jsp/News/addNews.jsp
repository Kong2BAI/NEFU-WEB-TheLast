<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <c:set var="imgPath" value="/resource/static/img/"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            top: 30%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            background-color: #f8f9fa;
        }
        .form-group {
            margin-bottom: 1em;
        }
        .container {
            width: 100%;
            height: auto; /* 确保高度自动调整 */
            padding: 20px; /* 添加内边距，确保内容不会被压住 */
        }
        .btn-block {
            display: block;
            width: 100%;
            margin-top: 20px; /* 添加上边距 */
        }
    </style>
    <title>addNews</title>
</head>
<body>
<div>
    <%@include file="../head.jsp"%>
</div>
<div class="container" >
    <div class="form-container">
        <h2 class="text-center">添加新闻</h2>
        <form action="News/addNews" method="post">
            <div class="form-group">
                <label for="title">标题</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="请输入标题" required>
            </div>
            <div class="form-group">
                <label for="content">内容</label>
                <textarea class="form-control" id="content" name="content" placeholder="请输入内容" rows="10" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary btn-block">提交</button>
        </form>
        <div>
            <% String error = request.getParameter("error");
                if (error != null) {
                    if ("empty_fields".equals(error)) { %>
            <div class="alert alert-danger mt-3" role="alert">标题和内容不能为空。</div>
            <% } else if ("insert_failed".equals(error)) { %>
            <div class="alert alert-danger mt-3" role="alert">插入失败，请重试。</div>
            <% } else if ("database_error".equals(error)) { %>
            <div class="alert alert-danger mt-3" role="alert">数据库错误，请重试。</div>
            <% }
            }
            %>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>
