<%-- 
    Document   : register
    Created on : Jun 25, 2021, 6:24:42 PM
    Author     : 855474
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form method="post">
            <label>Username: </label>
            <input type="text" name="input_username" value=${username}>
            <input type="submit" action="register" name="register_Button" value="Register name">
        </form>
            <c:if test="${!valid_username}">
                <c:set var="invalid_mssg" value="Please provide a username!" />
            </c:if>
            <p>${invalid_mssg}</p>
    </body>
</html>
