<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Welcome!" %></title>
</head>
<body>
    <h1>Welcome!</h1>
    <c:redirect url="login.jsp"/>
</body>
</html>
