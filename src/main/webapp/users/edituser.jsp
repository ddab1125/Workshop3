<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 20.08.2022
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<!-- Header -->
<%@ include file="/fragments/header.jsp" %>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>User List</a>
</div>

<form method="post" action="edit">
    <input type="hidden" name="id" value="${user.id}">
    <div class="form-group">
        <label for="name">Username</label>
        <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" value="${user.userName}">
    </div>
    <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" value="${user.email}">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>

    <button type="submit" class="btn btn-primary">Zapisz</button>
</form>

<!-- Footer -->
<%@ include file="/fragments/footer.jsp" %>
</body>
</html>
