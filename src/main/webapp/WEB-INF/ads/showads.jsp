<%--
  Created by IntelliJ IDEA.
  User: ryanschmid
  Date: 10/17/18
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">

    <div class="col-md-6">
        <p>${ad.id}</p>
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>

</div>

</body>
</html>
