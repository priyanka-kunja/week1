<%-- 
    Document   : adminpage
    Created on : Mar 31, 2019, 8:32:27 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PAGE</title>
    </head>
    <body style="background-color: pink">
        <p align="right"><a href="Logout">LOGOUT</a></p>
        <h1><center>Hello Instructor</center></h1>
        <p align="center">YOU CAN ADD OR UPLOAD VARIOUS COURSES PDFS FOR THE BENIFIT OF STUDENTS</p>

        <form action="course_form.jsp" method="post"> 
            <p align="center"><input type="submit" value="Add a Course" style="background-color: green"></p>
    </form>
    </body>
    
</html>
