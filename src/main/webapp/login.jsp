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
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
//ifelse statement

//    if (user != null && pass != null) {
//        if (user.equals("admin") && pass.equals("password"))
//            response.sendRedirect("/profile.jsp");
//    }
%>
<html>
<head>
    <title>Login</title>
</head>
<body class="container text-center">
<%@include file="partials/head.jsp"%>
<div class="card text-center border border-danger border-right-0 border-top-0 border-bottom-0 mx-auto my-5 prof">
    <div class="card-header bg-transparent"><h3>Login</h3></div>
    <form name="Login Page" action="login.jsp" method="POST">
        <div class="card-body">
            <div>
                <label>Username: </label>
                <input type="text" name="username">
            </div>
            <div>
                <label>Password: </label>
                <input type="password" name="password">
            </div>
        </div>
        <input type="submit" name="Submit" value="Submit" class="btn btn-outline-dark">
    </form>
    <c:choose>
        <c:when test = "${param.username == 'admin' && param.password == 'password'}">
               <c:redirect url="profile.jsp"/>
        </c:when>
        <c:when test="${param.username == '' || param.password == ''}">
            <c:out value="Please fill the fields properly.">

            </c:out>
        </c:when>
        <%--<c:otherwise>--%>
            <%--<c:redirect url="login.jsp"/>--%>
        <%--</c:otherwise>--%>
    </c:choose>
</div>
</body>
</html>
