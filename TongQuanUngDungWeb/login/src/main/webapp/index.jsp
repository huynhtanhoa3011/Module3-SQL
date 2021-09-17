<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/17/2021
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="text.css">
    <title>$Title$</title>
  </head>
  <body>
    <form method="post" action="/login">
      <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" size="30" placeholder="username"/>
        <br/>
        <br/>
        <input type="password" name="password" size="30" placeholder="password"/>
        <br/>
        <br/>
        <input type="submit" value="Sign in" style="background-color: cadetblue"/>
      </div>
    </form>
  </body>
</html>
