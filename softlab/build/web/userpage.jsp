<%-- 
    Document   : userpage
    Created on : Mar 31, 2019, 6:46:12 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
    </head>
    
        <p align="right"><a href="Logout">LOGOUT</a></p>
        <h1>
        <%String user=(String)session.getAttribute("user");%>
        <center><% out.print("Hello " + user);%></center></h1>
        <p align="center">BY ENROLLING IN THIS WEBSITE YOU CAN TAKE UP COURSES FOR DURATION OF 5 MONTHS.</p>
         <p align="center">CERTIFICATION FROM UNIVERSITY XYZ WILL BE PROVIDED.</p>
          <p align="center">YOU CAN TAKE UP COURSE AND WATCH THE VIDEOS OR PDFS AT ANY POINT OF TIME.</p>

        
        <p align="center"><a href="certi.jsp">ENROLL FOR COURSE</a></p>
        <jsp:include page="User" />
        
</html>
