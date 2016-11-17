<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <c:set var="url">${pageContext.request.contextPath}</c:set>

    <title>Admin add</title>

    <link href="${url}/resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 70px;
        }
    </style>

</head>
<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-4 col-lg-offset-7 text-left">
            <h5><p class="text-center">Admin ${sessionScope.loginUser.firstName}
                (<a href="${url}/logout">logout</a>)</p></h5>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 text-left">
            <h3>Add user</h3> </br>

            <form class="form-horizontal" method="post" action="${url}/admin/add">
                <div class="form-group">
                    <label class="control-label col-lg-2" for="login">Login:</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" id="login"
                               name="login" placeholder="Enter login"
                        <c:if test="${not empty newUser.login}">
                               value="<c:out value="${newUser.login}"/>"
                        </c:if>
                        >
                        <c:if test="${not empty errors['login']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['login']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="pwd">Password:</label>
                    <div class="col-lg-4">
                        <input type="password" class="form-control" id="pwd"
                               name="pwd" placeholder="Enter password">
                        <c:if test="${not empty errors['pwd']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['pwd']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2 " for="pwd2">Password again:</label>
                    <div class="col-lg-4">
                        <input type="password" class="form-control" id="pwd2"
                               name="pwd2" placeholder="Enter password">
                        <c:if test="${not empty errors['pwd']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['pwd']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="login">Email:</label>
                    <div class="col-lg-4">
                        <input type="email" class="form-control" id="email"
                               name="email" placeholder="Enter email"
                        <c:if test="${not empty newUser.email}">
                               value="<c:out value="${newUser.email}"/>"
                        </c:if>
                        >
                        <c:if test="${not empty errors['email']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['email']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="fname">First name:</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" id="fname" name="fname"
                               placeholder="Enter name"
                        <c:if test="${not empty newUser.firstName}">
                               value="<c:out value="${newUser.firstName}"/>"
                        </c:if>
                        >
                        <c:if test="${not empty errors['fname']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['fname']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="lname">Last name:</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" id="lname"
                               name="lname" placeholder="Enter surname"
                        <c:if test="${not empty newUser.lastName}">
                               value="<c:out value="${newUser.lastName}"/>"
                        </c:if>
                        >
                        <c:if test="${not empty errors['lname']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['lname']}"/>
                            </div>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="birthday">Birthday:</label>
                    <div class="col-lg-4">
                        <input type="date" class="form-control" id="birthday"
                               name="bday" placeholder="Enter birthday"
                        <c:if test="${not empty newUser.birthday}">
                               value="<fmt:formatDate pattern="yyyy-MM-dd" value="${newUser.birthday}"/>"
                        </c:if>
                        >
                        <c:if test="${not empty errors['bday']}">
                            <div class="alert alert-danger">
                                <c:out value="${errors['bday']}"/>
                            </div>
                        </c:if>
                    </div>

                </div>

                <div class="form-group">
                    <label class="control-label col-lg-2" for="role">Role:</label>
                    <div class="col-lg-4">
                        <select class="list-group-item" id="role" name="roleName">
                            <option
                                    <c:if test="${newUser.role.name eq 'admin'}">selected</c:if>
                                    value="admin">Admin
                            </option>
                            <option
                                    <c:if test="${newUser.role.name eq 'User'}">selected</c:if>
                                    value="user">User
                            </option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Ok</button>
                        <button type="reset" class="btn btn-default">Rest</button>
                        <a href="${url}/admin/users" class="btn btn-default"
                           role="button">Cancel</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- jQuery Version 1.11.1 -->
<script src="${url}/resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${url}/resources/js/bootstrap.min.js"></script>

</body>
</html>