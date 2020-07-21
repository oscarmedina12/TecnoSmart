/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import dao.EstadoDAO;
import dao.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Producto;

/**
 *
 * @author DellPC
 */
@WebServlet(name = "ControladorProducto", urlPatterns = {"/ControladorProducto"})
public class ControladorProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         if(request.getParameter("accion")!=null){
        String accion = request.getParameter("accion");
        switch(accion){
            case "1": registrar(request,response);
                 break;
            case "2": modificar(request,response);
        }
         }else{
             response.sendRedirect("crudProductos.jsp?msj=Acceso Denegado");
         }
    }
    
    private void registrar(HttpServletRequest request, HttpServletResponse response) throws IOException{
           try{
            long codigo =Long.parseLong(request.getParameter("codigo").trim());
            String tipoProducto = request.getParameter("tipoProducto").trim();
            String modeloProducto = request.getParameter("tipoProducto").trim();
            String descripcionProblema = request.getParameter("descripcionProblema").trim();
            int precio = Integer.parseInt(request.getParameter("precio").trim());
            String nombreCliente = request.getParameter("nombreCliente").trim();
            String emailCliente = request.getParameter("emailCliente").trim();
            String rutCliente = request.getParameter("rutCliente").trim();
            String telefonoCliente = request.getParameter("telefonoCliente").trim();
            int estado = Integer.parseInt( request.getParameter("estado").trim());
            if(codigo<1||tipoProducto.equals("")||modeloProducto.equals("")||descripcionProblema.equals("")||precio<1||
                    nombreCliente.equals("")||emailCliente.equals("")||rutCliente.equals("")||telefonoCliente.equals("")||
                    estado<1)
            {
                response.sendRedirect("IngresoServicio.jsp?msj=datos incorrectos");
            }else{
                EstadoDAO ed = new EstadoDAO();
                Producto nuevoProducto = new Producto (codigo,tipoProducto,modeloProducto,descripcionProblema,
                        precio,nombreCliente,emailCliente,rutCliente,telefonoCliente,ed.obtenerEstado(estado));
                
                ProductoDAO pd = new ProductoDAO();
                
                if(pd.obtenerProducto(nuevoProducto.getCodigo())==null){
                    int respuesta = pd.registrar(nuevoProducto);
                    if(respuesta==1){
                    response.sendRedirect("IngresoServicio.jsp?msj=Reparacion registrada");
                    }else{
                    response.sendRedirect("IngresoServicio.jsp?msj=La reparacion no se pudo ingresar"); // For input String: ""
                    }
                }else{
                    response.sendRedirect("IngresoServicio.jsp?msj=El Codigo ya existe");
                }
            }
           }catch(Exception e){
               response.sendRedirect("IngresoServicio.jsp?msj="+e.getMessage());
           }
        }
    
    private void modificar(HttpServletRequest request, HttpServletResponse response) throws IOException{
         try{
            long codigo =Long.parseLong(request.getParameter("codigo").trim());
            String tipoProducto = request.getParameter("tipoProducto").trim();
            String modeloProducto = request.getParameter("tipoProducto").trim();
            String descripcionProblema = request.getParameter("descripcionProblema").trim();
            int precio = Integer.parseInt(request.getParameter("precio").trim());
            String nombreCliente = request.getParameter("nombreCliente").trim();
            String emailCliente = request.getParameter("emailCliente").trim();
            String rutCliente = request.getParameter("rutCliente").trim();
            String telefonoCliente = request.getParameter("telefonoCliente").trim();
            int estado = Integer.parseInt( request.getParameter("estado").trim());
            if(codigo<1||tipoProducto.equals("")||modeloProducto.equals("")||descripcionProblema.equals("")||precio<1||
                    nombreCliente.equals("")||emailCliente.equals("")||rutCliente.equals("")||telefonoCliente.equals("")||
                    estado<1){
                response.sendRedirect("modProducto.jsp?msj=valores erroneos");
            }else{
                EstadoDAO ed = new EstadoDAO();
                Producto nuevoProducto = new Producto (codigo,tipoProducto,modeloProducto,descripcionProblema,
                        precio,nombreCliente,emailCliente,rutCliente,telefonoCliente,ed.obtenerEstado(estado));
                ProductoDAO pd = new ProductoDAO();
                if(pd.obtenerProducto(nuevoProducto.getCodigo())==null){
                    response.sendRedirect("modProducto.jsp?msj=Codigo de producto inexistente");
                }else{
                   int respuesta = pd.modificar(nuevoProducto);
                   if(respuesta>0){
                       response.sendRedirect("modProducto.jsp?msj=Estado de Reparacion modificada");
                   }else{
                       response.sendRedirect("modProducto.jsp?msj=El estado no se pudo modificar");
                   }
                }
            }
         }catch(Exception e){
             
         }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
