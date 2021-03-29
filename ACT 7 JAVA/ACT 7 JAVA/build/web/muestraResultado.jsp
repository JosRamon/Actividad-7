<%-- 
    Document   : resultado
    Created on : 28/03/2021, 03:36:16 PM
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Triangulo" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actividad 7</title>
    </head>
    <body bgcolor="greenyellow">
         <%
            Triangulo triangulo = (Triangulo) request.getAttribute("triangulo");
        %>     
        <h1>Area</h1>
        <p><%=triangulo.getArea()%></p>       
        <h1>Perimetro</h1>
        <p><%=triangulo.getPerimetro()%></p> 
        <a href="index.jsp"><h2>Menú Principal</h2></a>
    </body>
</html>
