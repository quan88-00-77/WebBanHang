<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sport Equipment Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: auto;
        }

        form {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #3498db;
        }

        input,
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #2ecc71;
            color: #fff;
            cursor: pointer;
            border: none;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
    <h1>Sport Equipment Form</h1>
    <form:form action="saveSportEquipment" method="post" modelAttribute="sportEquipment" enctype="multipart/form-data">
        <input type="hidden" id="id" name="id" value="${sportEquipment.id}" />
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${sportEquipment.name}" required />
        <br />
        <label for="description">Description:</label>
        <textarea id="description" name="description">${sportEquipment.description}</textarea>
        <br />
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="${sportEquipment.price}" required />
        <br />
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" value="${sportEquipment.quantity}" required />
        <br />
        <label for="sportType">Sport Type:</label>
        <input type="text" id="sportType" name="sport_type" value="${sportEquipment.sportType}" required />
        <br />
        <label for="brand">Brand:</label>
        <input type="text" id="brand" name="brand" value="${sportEquipment.brand}" required />
        <br />
        <label for="size">Size:</label>
        <input type="text" id="size" name="size" value="${sportEquipment.size}" />
        <br />
        <label for="color">Color:</label>
        <input type="text" id="color" name="color" value="${sportEquipment.color}" />
        <br />
        <label for="image">Image:</label> 
        <input type="file" id="image" name="image" />
        <br />
        <input type="submit" value="Save" />
    </form:form>
</body>
</html>
