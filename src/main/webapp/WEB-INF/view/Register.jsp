<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="${pageContext.request.contextPath}/resources/css/register.css" rel="stylesheet" />
</head>
<body>
  <section>
      <div class="form-box">
        <div class="form-value">
          <form action="register" method="post">
            <h2>Register</h2>
            <div class="inputbox">
              <ion-icon name="mail-outline"></ion-icon>
              <input type="text" name="username" required />
              <label for="">Username</label>
            </div>
            <div class="inputbox">
              <ion-icon name="mail-outline"></ion-icon>
              <input name="email" type="email" required />
              <label for="">Email</label>
            </div>
            <div class="inputbox">
              <ion-icon name="lock-closed-outline"></ion-icon>
              <input name="password" type="password" required />
              <label for="">Password</label>
            </div>
            <button type="submit" value="save">Register</button>
          </form>
        </div>
      </div>
    </section>
</body>
</html>