<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Login Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background-color: #f8f9fa;
        padding-top: 50px;
    }
    .form-login {
        max-width: 330px;
        padding: 15px;
        margin: auto;
    }
    .form-login .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
    }
</style>
</head>
<body>
    <div class="container">
        <% String email = (String) session.getAttribute("email");
           if (email == null) { %>
        <!-- Login Form -->
        <form class="form-login" method="post" action="${pageContext.request.contextPath}/user">
            <h2 class="mb-3">Login</h2>
            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger" role="alert">
                    Invalid email or password!
                </div>
            <% } %>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button class="btn btn-primary" type="submit">Login</button>
        </form>
        <% } %>
           <%-- else { %> --%>
        <!-- Logout Form -->
       <%--  <form class="form-login" method="post" action="${pageContext.request.contextPath}/logout">
            <h2 class="mb-3">Welcome, <%= email %>!</h2>
            <button class="btn btn-primary" type="submit">Logout</button>
        </form>
        <% } %> --%>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
