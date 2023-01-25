<%-- 
    Document   : logout
    Created on : 10 Dec, 2022, 12:29:18 AM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <% 
      
       Cookie c=new Cookie("mtr_login","");
       c.setMaxAge(0);
       response.addCookie(c);
       response.sendRedirect("index.jsp");

      %>
    </body>
</html>
