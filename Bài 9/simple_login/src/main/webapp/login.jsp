<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: IDEAPAD GAMING 3
  Date: 11/24/2022
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String username = request.getParameter("username");
  Date loginTime = (Date) request.getAttribute("loginTime");
%>
<h3>Hi <%=username%></h3>
<h3>Login time: <%=loginTime%></h3>
</body>
</html>
