
<%-- 
    Document   : resultado
    Created on : 28/03/2021, 03:36:16 PM
    Author     : Ramon
--%>

<%@page import="javax.swing.text.html.HTML.Tag"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.Login"%>
<%@page import="controllers.muestraCalculo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actividad 7</title>
    </head>
    <body bgcolor="greenyellow">
        <%Cookie cook[] = request.getCookies();%>
        <%HttpSession sesion = request.getSession(false);%> 
        
         <h1>Actividad 7</h1>
            <form action="muestraCalculo" method="post">            
                Base: <br>
                <input type="number" name="base"><br>                      
                Altura: <br>
                <input type="number" name="altura"><br><br>           
            <input type="submit" value="calcular"><br><br> 
        </form>         
       
        <%if (sesion.getAttribute("usuario") != null) {%>
        
        
        <% out.print(sesion.getAttribute("usuario").toString()); %>
        <%
            for(int i=0;i < cook.length;i++){
                if(cook[i].getName().equals("area"))out.println("Tu area anterior: "+cook[i].getValue());
                if(cook[i].getName().equals("perimetro"))out.println("Tu perimetro anterior: "+cook[i].getValue());               
                if(cook[i].getName().equals("base"))out.println("Tu base anterior: "+cook[i].getValue());
                if(cook[i].getName().equals("altura"))out.println("Tu altura anterior: "+cook[i].getValue());               
            }
        %>
       
        <%}else{%>
        <form method="POST" action="login">
            <button>
                Ingresar Usuario: 
            </button>
            <input name="usuario">
           
        </form>
        <% }%>

    </body>
</html>