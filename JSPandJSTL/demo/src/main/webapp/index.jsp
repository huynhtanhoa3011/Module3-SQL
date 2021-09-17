<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/17/2021
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <title>c:out example</title>
  </head>
  <body>
    <h2>c:out example</h2>
  <c:out value = "${'this is true : 10 > 1'}"/>
  <br/>
  Tag: <c:out value="${'<atag>, &'}"/>
  </body>
</html>
