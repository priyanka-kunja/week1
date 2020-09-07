<%-- 
    Document   : userlogin
    Created on : Mar 31, 2019, 4:30:43 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: pink">
        <%@include file="link.html" %>
        <h1 align="center">Welcome to User Login !</h1>
        <form action="LoginServlet" method="post">
            <p align="center">Enter User Name:<input type="text" name="user"></p>
            <p align="center">Enter Password:<input type="password" name="pass"></p>
            
            <p align="center"><input type="submit" name="Submit"></p>
        </form>
    </body>
</html>
