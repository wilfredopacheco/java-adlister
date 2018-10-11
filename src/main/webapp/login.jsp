<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wilfredopacheco
  Date: 10/11/18
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//ifelse statement
%>

<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Login</h3>
<div>
    <form name="Login Page" action="login.jsp" method="POST">
        <label>Username: </label>
        <input type="text" name="username">
        <div>
            <label>Password: </label>
            <input type="password" name="password">
        </div>
            <input type="submit" name="Submit" value="Submit">
    </form>
    <% request.getParameter("username"); %>
    <% request.getParameter("password"); %>
    <c:choose>
        <c:when test = "${param.username == 'admin' && param.password == 'password'}">
               <c:redirect url="profile.jsp"/>
        </c:when>
        <%--<c:otherwise>--%>
            <%--<c:redirect url="login.jsp"/>--%>
        <%--</c:otherwise>--%>
    </c:choose>
</div>
</body>
</html>
