<%-- 
    Document   : shoppingList
    Created on : Jun 25, 2021, 6:24:55 PM
    Author     : 855474
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <h3>Hello ${user_name}</h3>
        <form action="" method="post">
            <a href="ShoppingList?action=logout">Log out</a>
        </form>
        <h1>List</h1>
        <form action="" method="post">
            <label>Add item: </label>
            <input type="text" name="input_item" value="">
            <input type="submit" name="add_Button" value="Add">
            <input type="hidden" name="action" value="add"> <br>
        </form>

        <form action="" method="post">
            <c:forEach var="item" items="${shopItem}">
                <input type="radio" name="shoppingItem" value="${item}">${item} <br>
            </c:forEach>
            <!-- Will show delete button if one item in the list is present -->
            <c:if test="${isNotEmpty}">
                <input type="submit" name="delete_Button" value="Delete">
                <input type="hidden" name="action" value="delete">
            </c:if>
        </form>

    </body>
</html>
