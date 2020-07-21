
<%@page import="dao.UsuarioDAO"%>
<%@page import="util.UsuarioUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/Estilode_bar.css" rel="stylesheet" type="text/css"/>
        <title>TecnoSmart</title>
    </head>
    <body class="Body">
<<<<<<< HEAD
   <div class="header">
  <a href="#default" class="logo">TecnoSmart</a>
  <div class="header-right">
    <a class="active" href="tecnosmart.jsp">Inicio</a>
    <a href="IngresoServicio.jsp">Ingresar Servicio</a>
    <a  href="Listar.jsp">Ver servicios</a>
      <a  href="Listar.jsp">salir ctm</a>
  </div>
</div>
=======
        <br>
        <form action="Salir" method="POST">
        <div class="login col-lg-3">
        <input class="btn btn-danger btn-block" type="submit" name="accion" value="Cerrar Sesión">
        </div>
    </form>
        <br>
>>>>>>> 5db799c42d0076beb1cc9dd6d24db55fb9056e71
    <center>
        <h1>Bienvenido
            <% if(session.getAttribute("usuario")!= null){
             Usuario u = (Usuario) session.getAttribute("usuario");
            %>
        <h3><%= u.getNombre()+" "+u.getApellido() %></h3>
        <%}else{response.sendRedirect("index.jsp?msj=Acceso Denegado");}%>
       
       

        <br>
        
        <% if(request.getParameter("msj")!= null){%>
        <h3><%= request.getParameter("msj") %></h3>
        <%}%>
        
      </center>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
