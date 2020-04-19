    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
              crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>

        <nav class="navbar navbar-light bg-dark ">
            <div class="container-fluid">
                <a class="navbar-brand text-light" href="#">TIENDA</a>
            </div>
        </nav>


        <div class="py-4">
            <div class="container card rounded border border-success">

                <div class="card-header text-center">
                    <h4>LOGIN</h4>
                </div>

                <div class="container py-4">
                    <form action="menu.jsp">
                        <div class="form-group">
                            <label>Nombre de Usuario</label>
                            <input type="text" id="usuario" title="Ingrese su usuario" placeholder="Ingrese Usuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña de Usuario</label>
                            <input type="password" id="contraseña" title="Ingrese contraseña" placeholder="Ingrese Contraseña" class="form-control">
                        </div>
                        <div class="form-group text-center">
                            <input type="submit" id="submit" title="Enviar datos"  class="btn btn-primary">
                            <input type="reset" id="reset" title="Limpiar campos"  class="btn btn-secondary">
                        </div>
                    </form> 
                </div>
            </div>
        </div>
    </body>
</html>
