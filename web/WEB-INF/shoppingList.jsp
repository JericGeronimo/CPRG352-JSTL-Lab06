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
         <a href="ShoppingList?logout" action="delete">Log out</a>
         <h1>List</h1>
         <form>
             <label>Add item: </label>
             <input type="text" name="input_item" value=>
         </form>
    </body>
</html>
