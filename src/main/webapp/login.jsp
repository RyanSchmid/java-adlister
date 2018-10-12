<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: ryanschmid
  Date: 10/11/18
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%
        String email = request.getParameter("email");
        String password = request.getParameter("password");
//        if(request.getMethod().equalsIgnoreCase("POST")){
    if(email != null && password != null){
    if (email.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>


<head>
    <jsp:include page="partials/header.jsp">
        <jsp:param name="title" value="Welcome to the website!"/>
    </jsp:include>
</head>


<body>
<jsp:include page="partials/navigation.jsp"/>


<h1>Welcome to the Login Page</h1>

<form method="POST" action="/login.jsp">
    <div>
        <label for="email">Email:</label>
        <input id="email" name="email" placeholder="Enter your email address" type="text"/>
    </div>

    <div>
        <label for="email">Password:</label>
        <input id="password" name="password" placeholder="Enter your password" type="password"/>
    </div>
    <div>
        <input type="submit" class="btn">
    </div>
</form>

</body>

</html>