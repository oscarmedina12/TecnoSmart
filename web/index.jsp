<%-- 
    Document   : index
    Created on : 08-jul-2020, 4:08:59
    Author     : DellPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body class="Body">
        <div class="container col-lg-3">
            <div class="form-group text-center">
                <h2>INICIO DE SESIÓN TECNOSMART</strong></h2>
                </div>
        <center>
       
        <h3></h3>
        <form action="ControladorUsuario" method="post">
        <table>
            <tr>
                <td>ID Usuario</td>
                <td><input type="text" name="id" value=""/></td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td><input type="password" name="password" value=""/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Iniciar Sesion"/></td>
                    </a>
                </td>
            </tr>
        </table>
            <input type="hidden" name="accion" value="1"/>
        <% if(request.getParameter("msj")!= null){%>
        <h3><%= request.getParameter("msj") %></h3>
        <%}%>
        </form>
        </center>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
