<%-- 
    Document   : course_form
    Created on : Apr 1, 2019, 3:18:22 PM
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
    <body>
        <p align="right"><a href="Logout">LOGOUT</a></p>
        <p align="center">YOU CAN UPLOAD VIDEOS AND PDFS REGARDING THAT PARTICULAR COURSE.
        IF YOU WANT TO ADD ANY COUSRE  YOU CAN ADD.</p>
        <form action = "UploadVideo" method = "post" enctype = "multipart/form-data">
         <table style="width: 100%">
             <tr>
                 <th><input type = "file" name = "file" size = "50" /></th>
                 <th><input type = "submit" value = "Upload video" /></th>
             </tr>
         </table>
        </form>
        <form action = "UploadPdf" method = "post" enctype = "multipart/form-data">
         <table style="width: 100%">
             <tr>
                 <th><input type = "file" name = "file" size = "50" /></th>
                 <th><input type = "submit" value = "Upload PDF" /></th>
             </tr>
         </table>
        </form>
        <form action="Course" method="post">
            <p align="center">Enter Course Code:<input type="text" name="cc"></p>
            <p align="center">Enter Course Name:<input type="text" name="cn"></p>
            <p align="center">Enter Course Instructor:<input type="text" name="ci"></p>
            <p align="center">Enter Video file Name:<input type="text" name="video_link"></p>
            <p align="center">Enter PDF file Name:<input type="text" name="pdf_link"></p>
            <p align="center"><input type="submit" name="submit"></p>
        </form>
    </body>
</html>
