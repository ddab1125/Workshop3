<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 20.08.2022
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- Header -->
<%@ include file="/fragments/header.jsp" %>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>User List</a>
</div>

<table class="table">
    <tbody>
    <tr>
        <th scope="row">ID</th>
        <td>${user.id}</td>

    </tr>
    <tr>
        <th scope="row">Name</th>
        <td>${user.userName}</td>

    </tr>
    <tr>
        <th scope="row">Email</th>
        <td>${user.email}</td>
    </tr>
    </tbody>
</table>
<div>
    <a href="list">
        <button type="button" class="btn btn-primary btn-lg btn-block">Back</button>
    </a>
</div>
<!-- Footer -->
<%@ include file="/fragments/footer.jsp" %>
<body>

</body>
</html>
