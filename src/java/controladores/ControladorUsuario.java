/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.*;
import util.UsuarioUtil;

/**
 *
 * @author DellPC
 */
@WebServlet(name = "ControladorUsuario", urlPatterns = {"/ControladorUsuario"})
public class ControladorUsuario extends HttpServlet {

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
            case "1": iniciarSesion(request,response);
                break;
            default: response.sendRedirect("index.jsp?msj=Acceso Denegado");
        }
        }else{
            response.sendRedirect("index.jsp?msj=Acceso Denegado");
        }
    }
    
    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response) throws IOException{
        try{
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        Usuario usuarioIniciando = new Usuario(id,password);
        UsuarioDAO ud = new UsuarioDAO();
        Usuario temporal= ud.obtenerUsuario(usuarioIniciando);
        if(temporal!=null){
            if(temporal.getPassword().equals(usuarioIniciando.getPassword())){
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", temporal);
            response.sendRedirect("tecnosmart.jsp");
            }else{
                response.sendRedirect("index.jsp?msj=Contraseña incorrecta");
            }
        }else{
            response.sendRedirect("index.jsp?msj=usuario inexistente");
        }
        }catch(Exception e){
            response.sendRedirect("index.jsp?msj="+e.getMessage());
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
