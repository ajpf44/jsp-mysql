<%-- 
    Document   : classe
    Created on : 13 de mar de 2024, 16:05:01
    Author     : aliss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="com.br.site.Site"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
          <% 
             
       Site s = new  Site();
      String mensagem =  s.ola();
    %>
        <%=mensagem %>
        
    </body>
</html>
