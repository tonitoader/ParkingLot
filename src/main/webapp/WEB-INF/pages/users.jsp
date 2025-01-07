<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>
    <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
        <a class="w-15 btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddUser">Add User</a>
        <button type="submit" class="btn btn-secondary">Invoice</button>
    </c:if>

    <form method="POST" action="${pageContext.request.contextPath}/Users">
        <div class="container text-center">
            <c:forEach var="user" items="${users}">
                <div class="row align-items-center mb-2">
                    <!-- Checkbox pentru fiecare utilizator -->
                    <div class="col-1">
                        <input type="checkbox" name="user_ids" value="${user.id}" />
                    </div>
                    <!-- Afișarea username-ului -->
                    <div class="col-4">
                            ${user.username}
                    </div>
                    <!-- Afișarea email-ului -->
                    <div class="col-4">
                            ${user.email}
                    </div>
                </div>
            </c:forEach>
        </div>

    </form>
</t:pageTemplate>
