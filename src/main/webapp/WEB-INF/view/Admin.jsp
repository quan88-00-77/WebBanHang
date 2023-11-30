<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel - CRUD</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/favicon.ico" />
<link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css.map">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js.map">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">
</head>
 <body>
    <header>
      <h1>Admin Panel - CRUD</h1>
    </header>

    <nav>
      <ul>
        <li><a href="${pageContext.request.contextPath}/home">Home page</a></li>
        <li><a href="showFormForAdd">Create Product</a></li>
        <li><a href="#">Article Management</a></li>
        <!-- Thêm các mục quản lý khác tùy vào nhu cầu của bạn -->
      </ul>
    </nav>

    <section>
      <h2>User list</h2>

      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Operation</th>
        </tr>
        
        <c:forEach var="product" items="${sportEquipments}">
        <c:url var="deleLink" value="delete">
						<c:param name="sportEquipmentId" value="${product.id}"></c:param>
					</c:url>
		        <c:url var="updateLink" value="showFormForUpdate">
						<c:param name="sportEquipmentId" value="${product.id}"></c:param>
					</c:url>
        <tr>
          <td>${product.id}</td>
          <td>${product.name }</td>
          <td>${product.price}</td>
          <td>${product.quantity }</td>
          <td>
            <a href="${updateLink}" class="btn btn-outline-danger">Edit</a>
            <a href="${deleLink}" class="btn btn-primary">Delete</a>
          </td>
          </tr>
         </c:forEach>
        
        <!-- Thêm các dòng khác tương tự -->
      </table>

      <h2>Add New User</h2>
      <form>
        <label for="username">User name:</label>
        <input type="text" id="username" name="username" />

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" />

        <input type="submit" value="Add" />
      </form>
    </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>