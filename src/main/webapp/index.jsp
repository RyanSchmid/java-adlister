<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Our Page" %></title>
    <jsp:include page="partials/header.jsp"/>
</head>
<body>

    <%--FIZZ BUZZ EXERCISE--%>
    <%--<c:forEach var="item" begin="1" end="30">--%>
        <%--<c:choose>--%>
            <%--<c:when test="${item %15 == 0}">--%>
                <%--<p>FizzBuzz</p>--%>
            <%--</c:when>--%>
            <%--<c:when test="${item %3 == 0}">--%>
                <%--<p>Fizz</p>--%>
            <%--</c:when>--%>
            <%--<c:when test="${item %55 == 0}">--%>
                <%--<p>Buzz</p>--%>
            <%--</c:when>--%>
            <%--<c:otherwise>--%>
                <%--<p>${item}</p>--%>
            <%--</c:otherwise>--%>
    <%--</c:choose>--%>
    <%--</c:forEach>--%>


    <%--When a user visits /login.jsp, they should see a form for logging in--%>

    <%--This form should have a 'username' and 'password' field.--%>

    <%--This form should submit a POST request to /login.jsp--%>

    <%--Inside of login.jsp write some code to check the submmitted values. If the username submitted is "admin", and the password is "password", redirect the user to the profile page, otherwise, redirect back to the login form.--%>


    <div>
        <p>Path: <%= request.getRequestURL() %></p>
        <p>Query String: <%= request.getQueryString() %></p>
        <p>"name" parameter: <%= request.getParameter("name") %></p>
        <p>"name" parameter with EL: ${param.name}</p>
        <p>User-Agent header: <%= request.getHeader("user-agent") %></p>
    </div>





</body>
</html>
