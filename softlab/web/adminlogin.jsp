<%-- 
    Document   : adminlogin
    Created on : Mar 31, 2019, 4:31:52 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN LOGIN</title>
    </head>
    <body style="background-color: pink">
        <%@include file="link.html" %>
        <h1 align="center">LOGIN WITH REGISTERED USERNAME AND PASSWORD</h1>
        <form action="AdminLogin" method="post">
            <p align="center">ADMIN NAME<input type="text" name="user"></p>
            <p align="center">ADMIN PASSWORD<input type="password" name="pass"></p>
            
            <p align="center"><input type="submit" name="Submit"></p>
        </form>
    </body>
</html>
