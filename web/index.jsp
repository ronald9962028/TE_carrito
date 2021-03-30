<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("lista")==null) {
        ArrayList<String> lis= new ArrayList<String>();
        session.setAttribute("lista", lis);
    }
    
    ArrayList<String> lista = (ArrayList<String>)session.getAttribute("lista");
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HCarrito de compras</h1>
        <p>Inserte los prodyuctos que desea</p>
        <form action="TE_carrito" method="post">
            Producto: <input type="text" name="producto">
            <input type="submit" value="Enviar">
        </form>
        <br>
        <a href="TE_carrito">Vaciar Carrito</a>
        <h3>Contenido del Carrito</h3>
        <ul>
            <%
            if (lista!=null) { 
                for (String item:lista) {  
            %>
                    <li><%= item %></li>
            <%
                }
            }
            %>
        </ul>
    </body>
</html>
