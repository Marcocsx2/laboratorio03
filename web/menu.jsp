<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Libreria"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
              crossorigin="anonymous">
        <title>Menu</title>
    </head>
    <body>
        <%
            Libreria lib = new Libreria();
            lib.conectar();
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            ResultSet dato = lib.ValidarLogin(usuario, password);
            boolean existeregistro = dato.first();

            if (existeregistro) {
        %>
        <%@include file="header.jsp" %>
        <h1>Bienvenido al menu</h1>
        <%} else {%>
        <h1>Error en el Login</h1>
        <%}%>        
    </body>
</html>
