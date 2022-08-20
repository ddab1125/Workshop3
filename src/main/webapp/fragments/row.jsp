<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 20.08.2022
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
</head>
<body>
<tr>
    <td>${user.id}</td>
    <td>${user.userName}</td>
    <td>${user.email}</td>
    <!-- Actions -->
    <td>
<%--        <form method="get" action="/user/delete">--%>
<%--            <input type="hidden" name="id" value="${user.id}">--%>
<%--        </form>--%>
        <a href="delete?id=${user.id}">
            <button type="button" class="btn btn-danger btn-sm">Delete</button>
        </a>
        <a href="edit?id=${user.id}">
            <button type="button" class="btn btn-primary btn-sm">Edit</button>
        </a>
        <a href="show?id=${user.id}">
            <button type="button" class="btn btn-primary btn-sm">Show</button>
        </a>
    </td>
    <!-- End Actions -->
</tr>
</body>
</html>
