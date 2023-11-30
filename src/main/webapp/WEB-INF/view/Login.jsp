<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Signin form
    </title>
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- APP CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flogin.css">

</head>

<body style="background-image: url(${pageContext.request.contextPath}/resources/img/backgrounglogin.jpeg);">

    <div class="form" id="signin-form">
        <a href="#" class="form-logo">
            <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="company logo">
        </a>
        <form action="login" method="post">
        <div class="form-group">
            <input type="email" class="form-input" placeholder="Email" name="email" id="signin-email">
            <span class="form-input-icon err">
                <i class='bx bx-error-circle'></i>
            </span>
            <span class="form-input-icon success">
                <i class='bx bx-check-circle'></i>
            </span>
            <span class="form-input-err-msg" data-err-for="signin-email"></span>
        </div>
        <div class="form-group">
            <input type="password" class="form-input" placeholder="Password" name="password">
            <span class="form-input-icon err">
                <i class='bx bx-error-circle'></i>
            </span>
            <span class="form-input-icon success">
                <i class='bx bx-check-circle'></i>
            </span>
            <span class="form-input-err-msg" data-err-for="signin-password"></span>
        </div>
        <div class="form-group form-group-checkbox">
            <input type="checkbox" name="remember" id="remember" checked="checked">
            <label for="remember">
                Remember Me
                <i class='bx bx-check'></i>
            </label>
        </div>
        <button class="form-btn" id="signin-btn">Sign in</button>
        </form>
        <span class="form-delimiter">
            or connect with
        </span>
        <div class="form-social">
            <a href="#" class="form-social-item fb">
                <i class='bx bxl-facebook'></i>
            </a>
            <a href="#" class="form-social-item tw">
                <i class='bx bxl-twitter'></i>
            </a>
            <a href="#" class="form-social-item gg">
                <i class='bx bxl-google'></i>
            </a>
        </div>
        <span class="form-txt">
            Don't have an account?
            <a href="register">Sign up!</a>
        </span>
        <span class="form-txt">
            <a href="#">Forgot password?</a>
        </span>
    </div>
    <!-- APP JS -->
    <script src="${pageContext.request.contextPath}/resources/js/flogin.js"></script>
</body>

</html>