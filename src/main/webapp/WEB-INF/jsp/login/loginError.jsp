<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <c:set var="imgPath" value="/resource/static/img/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        .bg {
            /* The image used */
            background-image: url("<c:url value='${imgPath}/mika.png'/>");
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 300px;
            text-align: center;
        }
        .login-container input[type=text], .login-container input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
        }
        .login-container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 5px;
        }
        .login-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="bg">
    <div class="login-container">
        <h2>登录</h2>
        </br>
        <label><a href="">返回首页</a></label>
        <form action="login" method="post">
            <label ><b>用户名</b>
                <input type="text" placeholder="KongBai" name="username" ></label>
            <label><b>密码</b>
                <input type="password" placeholder="hahaha2233" name="password" ></label>
            <p style="font-size: 0.5em;color: red;">用户名或密码错误</p>
            <button type="submit">登录</button>
        </form>
    </div>
</div>
</body>
</html>
