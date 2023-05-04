<%-- 
    Document   : edit
    Created on : Oct 7, 2022, 9:34:21 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="edit" method="POST">
            <input type="hidden" name="id" value="${requestScope.student.id}"/>
            Name: <input type="text" name="name" value="${requestScope.student.name}" /> <br/>
            Gender: <input 
                <c:if test="${requestScope.student.gender}">
                    checked="checked"
                </c:if>
                type="radio" name="gender" value="male"/> Male
            <input
                <c:if test="${!requestScope.student.gender}">
                    checked="checked"
                </c:if>
                type="radio" name="gender" value="female"/> Female <br/>
            Dob : <input type="date" name="dob" value="${requestScope.student.dob}"/> <br/>
            Department :<select name="did">
                <c:forEach items="${requestScope.depts}" var="d">
                    <option
                        <c:if test="${d.id eq requestScope.student.dept.id}">
                            selected="selected"
                        </c:if>
                        value="${d.id}">${d.name}</option>
                </c:forEach>
            </select> <br/>
            Skills: <br/>
            <c:forEach items="${requestScope.skills}" var="s">
                <input
                    <c:forEach items="${requestScope.student.skills}" var="sk">
                    <c:if test="${sk.id eq s.id}">
                    checked="checked"
                    </c:if>
                    </c:forEach>
                    type="checkbox" name="skid" value="${s.id}"/> ${s.name} <br/>
            </c:forEach>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
