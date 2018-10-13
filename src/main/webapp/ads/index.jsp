<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: wilfredopacheco
  Date: 10/12/18
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Ads</title>
</head>
<body>
<h1>Here are all the products:</h1>
<c:forEach var="ad" items="${ads}">
    <div class="ads">
        <h2>${ad.title}</h2>
        <p>Description: ${ad.description}</p>
    </div>
</c:forEach>

</body>
</html>