<%-- 
    Document   : searchdata
    Created on : Sep 19, 2022, 10:15:46 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1px">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Gender</td>
                <td>Dob</td>
            </tr>
            <c:forEach items="${requestScope.students}" var="s" varStatus="loop">
                <tr 
                    <c:if test="${loop.index % 2 ==0}">
                        style ="background-color: gray;"
                    </c:if>
                    >
                    <td>${s.id}
                    </td>
                    <td>${s.name}</td>
                    <td>${s.gender}</td>
                    <td>${s.dob}</td>
                </tr>
            </c:forEach>
        </table>
        
        <%
           ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
        %>
        
        <table border="1px">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Gender</td>
                <td>Dob</td>
            </tr>
            <% for(Student s : students){ %>
                <tr>
                    <td><%=s.getId()%>
                    </td>
                    <td><%=s.getName()%></td>
                    <td><%=s.isGender()%></td>
                    <td><%=s.getDob()%></td>
                </tr>
            <%}%>
        </table>
        
    </body>
</html>
