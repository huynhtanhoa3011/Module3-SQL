<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
    Map<String, String> dic = new HashMap<>();
    %>

    <%
    dic.put("hello", "xin chào");
    dic.put("good", "tốt");
    dic.put("book", "quyển sách");
    dic.put("sorry", "xin lỗi");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("word: " + search);
        out.println("result: " + result);
    } else {
        out.println("Not found");
    }
    %>
</body>
</html>
