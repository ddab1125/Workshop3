<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<body>
<!-- Header -->
<%@ include file="/fragments/header.jsp" %>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <a href="newuser" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Add User</a>
</div>
<!-- Content -->
<div class="card">
    <div class="card-body">
        <div> Users</div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
                        <c:forEach items="${users}" var="user">
                            <%@include file="/fragments/row.jsp" %>
                        </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<!-- Footer -->
<%@ include file="/fragments/footer.jsp" %>
</body>

</html>
