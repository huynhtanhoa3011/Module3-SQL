<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<h1>Delete Product</h1>
<p>
    <a href="/categorys">Back to Product List</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td>${requestScope["product"].getId()}</td>
            </tr>
            <tr>
                <td>fullname: </td>
                <td>${requestScope["product"].getFullname()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td>${requestScope["product"].getQuantity()}</td>
            </tr>
            <tr>
                <td>Color: </td>
                <td>${requestScope["product"].getColor()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["product"].getDescription()}</td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td><input class="btn btn-primary" type="submit" value="Delete Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>