<%-- 
    Document   : modificar
    Created on : 15-jul-2020, 0:57:28
    Author     : DellPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>TecnoSmart</title>
    </head>
    <body class="Body">
    <center>
        <h1>Panel de Modificacion </h1>
        <div class="container col-lg-3">
        <form action="ControladorProducto" method="post">
            <table>
                <tr>
                    <td>Codigo de Cliente</td>
                    <td><input type="number" name="codigo" value=""/></td>
                </tr>
                <tr>
                    <td>Tipo de Producto</td>
                    <td><input type="text" name="tipoProducto"/></td>
                </tr>
                <tr>
                    <td>Modelo de Producto</td>
                    <td><input type="text" name="modeloProducto"/></td>
                </tr>
                <tr>
                    <td>Descripcion del Problema</td>
                    <td><textarea cols="20" rows="5" name="descripcionProblema"></textarea></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="number" name="precio"/></td>
                </tr>
                <tr>
                    <td>Nombre Cliente</td>
                    <td><input type="text" name="nombreCliente"/></td>
                </tr>
                <tr>
                    <td>Email Cliente</td>
                    <td><input type="text" name="emailCliente"/></td>
                </tr>
                <tr>
                    <td>Rut Cliente</td>
                    <td><input type="text" name="rutCliente"/></td>
                </tr>
                <tr>
                    <td>Telefono Cliente</td>
                    <td><input type="text" name="telefonoCliente"/></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td>
                        <select name="estado">
                            <option value="0">Seleccione</option>
                            <option value="1">En Reparacion</option>
                         
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Modificar"/></td>
                <input type="hidden" name="accion" value="1"/>
                </tr>
            </table>
        </form>
        </div>
                        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
    </center>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
