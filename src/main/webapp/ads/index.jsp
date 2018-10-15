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
<head>    <jsp:include page="../partials/head.jsp">
    <jsp:param name="title" value="Welcome to my site!" />
</jsp:include>
    <title>View Ads</title>
</head>
<body>
<h1>Here are all the products:</h1>

<ul>
    <c:forEach var="ad" items="${ads}">
        <div class="ads">
           <li>
               <h2>${ad.title}</h2>
               <p>Description: ${ad.description}</p>
           </li>
        </div>
    </c:forEach>
</ul>
</body>
</html>