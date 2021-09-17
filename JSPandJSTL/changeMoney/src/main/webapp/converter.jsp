<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/17/2021
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
</head>
<body>
<h2>Currency Converter</h2>
<form>
    <%
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));

        float vnd = rate * usd;
    %>
    <h1>Rate: <%=rate%></h1>
    <h1>USD: <%=usd%></h1>
    <h1>VND: <%=vnd%></h1>
</form>
</body>
</html>
