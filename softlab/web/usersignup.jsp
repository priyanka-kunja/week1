<%-- 
    Document   : usersignup
    Created on : Mar 31, 2019, 4:32:58 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="link.html" %>
        <h1 align="center">Welcome to Sign Up!</h1>
        <form action="Register" method="post">
            <p align="center">
                Enter Your Name:<input type="text" name="user">
            </p>
            <p align="center">
                Enter Your Phone Number:<input type="text" name="phone">
            </p>
            <p align="center">
                Enter Your E-mail ID:<input type="text" name="email_id">
            </p>
            <p align="center">
                Set User Name:<input type="text" name="uname">
            </p>
            <p align="center">
                Set Password:<input type="password" name="pass">
            </p>
            <p align="center"><input type="submit" name="Submit"></p>
        </form>
    </body>
</html>
