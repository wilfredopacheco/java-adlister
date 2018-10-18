<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Create your account</h1>
    <form action="/register" method="POST">
        <div class="form-group">
            <label for="username">Create Username</label>
            <input  id="username" name="username" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Enter Username">
        </div>
        <div class="form-group">
            <label for="email">Enter Email address</label>
            <input id="email" name="email" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="password">Create Password</label>
            <input id="password" name="password" type="password" class="form-control" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="passwordConfirm">Confirm Password</label>
            <input id="passwordConfirm" name="passwordConfirm" type="password" class="form-control" placeholder="Confirm Password">
        </div>
        <input type="submit" class="btn btn-primary">
    </form>
</div>
</body>
</html>
