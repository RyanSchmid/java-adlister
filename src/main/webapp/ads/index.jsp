<%--
  Created by IntelliJ IDEA.
  User: ryanschmid
  Date: 10/12/18
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
    <style>
        table {
            margin: 5%;
            font-style: italic;
            font-weight: bold;
            border: black;
        }
        tr {
            border: black;

        }
        td {
            padding: 2%;
         border-style: solid;
        }
    </style>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp"/>
   <div>
    <table>
    <c:forEach var="ads" items="${ads}">
            <tr>
            <td>${ads.title}</td>
            <td>Description: ${ads.description}</td>
                <td>Sold by: User #${ads.userId}</td>
            </tr>
    </c:forEach>



    </table>
    </div>

</body>
</html>
