<%-- 
    Document   : Listar
    Created on : 15-jul-2020, 0:24:02
    Author     : DellPC
--%>

<%@page import="dao.ProductoDAO"%>
<%@page import="modelos.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(session.getAttribute("usuario")==null){
            response.sendRedirect("index.jsp?msj=Acceso Denegado");
        }else{
        Producto p = new Producto();
        if(request.getParameter("codigo")!=null){
         p = new ProductoDAO().obtenerProducto(Long.parseLong(request.getParameter("codigo")));
                }
            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
         <link href="css/Estilode_bar.css" rel="stylesheet" type="text/css"/>
         
        <title>Lista de Registros</title>
    </head>
    <body class="Body">
         <div class="header">
  <a href="#default" class="logo">TecnoSmart</a>
  <div class="header-right">
    <a  href="tecnosmart.jsp">Inicio</a>
    <a href="crudProductos.jsp">Ingresar Servicio</a>
    <a   class="active" href="Listar.jsp">Ver servicios</a>
  </div>
</div>
        <br>
    <center>
        <h2>Lista de Reparaciones Registradas</h2>
        <br>
    </center>
        <form action="">
            <div  >
                <input  type="text" id="myInput" onkeyup="myFunction()" placeholder="Buscar Por Rut...." title="Buscar rut" >
                <table id="myTable">
            <tr>
                <th>Código</th>
                <th>Producto</th>
                <th>Modelo</th>
                <th>Problema</th>
                <th>Precio</th>
                <th>Nombre</th>
                <th>Email</th>
                <th>Rut</th>
                <th>Telefono</th>
                <th>Estado</th>
                <th>      </th>
            </tr>
            <% ArrayList<Producto> productos = new ProductoDAO().obtenerProductos();
               for(Producto po: productos){               
                %>
            <tr>
<<<<<<< HEAD
                <td><%= p.getCodigo() %></td>
                <td><%= p.getTipoProducto() %></td>
                <td><%= p.getModeloProducto() %></td>
                <td><%= p.getDescripcionProblema() %></td>
                <td><%= p.getPrecio() %></td>
                <td><%= p.getNombreCliente() %></td>
                <td><%= p.getEmailCliente() %></td>
                <td><%= p.getRutCliente() %></td>
                <td><%= p.getTelefonoCliente() %></td>
                <td><%= p.getEstado() %></td>
                <td><a href="modificar.jsp?codigo=<%= p.getCodigo() %>">
                        <button class="btn info" type="button">Modificar</button>
=======
                <td><%= po.getCodigo() %></td>
                <td><%= po.getTipoProducto() %></td>
                <td><%= po.getModeloProducto() %></td>
                <td><%= po.getDescripcionProblema() %></td>
                <td><%= po.getPrecio() %></td>
                <td><%= po.getNombreCliente() %></td>
                <td><%= po.getEmailCliente() %></td>
                <td><%= po.getRutCliente() %></td>
                <td><%= po.getTelefonoCliente() %></td>
                <td><%= po.getEstado() %></td>
                <td><a href="modProducto.jsp?codigo=<%= po.getCodigo() %>">
                        <button type="button">Modificar</button>
>>>>>>> 5db799c42d0076beb1cc9dd6d24db55fb9056e71
                    </a></td>
            </tr>
            <% } %>
             </table>
            </div>
        </form>
        
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i =0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[7];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>  
</body>
</html>
<% } %>