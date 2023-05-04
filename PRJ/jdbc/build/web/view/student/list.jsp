<%-- 
    Document   : list
    Created on : Sep 30, 2022, 10:02:12 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items = "${requestScope.students}" var="s">
            ${s.id}, ${s.name}, ${s.gender}, ${s.dob}, ${s.created_time} <br/>
        </c:forEach>
    </body>
</html>
