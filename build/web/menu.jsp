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
            Libreria lib=new Libreria();
            lib.conectar();
            String usuario=request.getParameter("usuario");
            String clave=request.getParameter("contraseña");
            ResultSet dato=lib.ValidarLogin(usuario , clave);
            if (lib.numeroCampos > 0) {
        %>
        <h1> <%=dato.getString(2)%> </h1>
        <%}else {%>
        <h2><% out.print("Usuario no registrado"); %></h2>
        <%}%>
    </body>
</html>
