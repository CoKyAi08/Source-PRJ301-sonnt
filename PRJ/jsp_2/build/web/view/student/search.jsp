<%-- 
    Document   : search
    Created on : Sep 23, 2022, 9:29:46 AM
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
        <form action="search" method="GET">
            Name: <input type="text" name="name" value="${param.name}"/>
            <Br/>
            Dob From: <input type="date" name="from" value="${param.from}" /> 
            To <input type="date" name="to" value="${param.to}" />
            <br/>
            <input type="submit" value="Search"  />
        </form>
        <c:if test="${requestScope.students ne null}">
            <table border="1px">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Dob</td>
                    <td>Gender</td>
                </tr>
                <c:forEach items="${requestScope.students}" var="s">
                    <tr>
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <td>${s.dob}</td>
                    <td>${s.gender}</td>
                </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>
