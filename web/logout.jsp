<%-- 
    Document   : logout
    Created on : 14 Jul, 2016, 10:51:12 AM
    Author     : Shashank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        HttpSession hs = request.getSession();
        hs.invalidate();
        
        response.sendRedirect("login.jsp");

%>
    </body>
</html>
