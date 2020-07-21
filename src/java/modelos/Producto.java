/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author DellPC
 */
public class Producto {
    
    private long codigo;
    private String tipoProducto;
    private String modeloProducto;
    private String descripcionProblema;
    private int precio;
    private String nombreCliente;
    private String emailCliente;
    private String rutCliente;
    private String telefonoCliente;
    private Estado estado;

    public Producto(long codigo, String tipoProducto, String modeloProducto, String descripcionProblema, int precio, String nombreCliente, String emailCliente, String rutCliente, String telefonoCliente, Estado estado) {
        this.codigo = codigo;
        this.tipoProducto = tipoProducto;
        this.modeloProducto = modeloProducto;
        this.descripcionProblema = descripcionProblema;
        this.precio = precio;
        this.nombreCliente = nombreCliente;
        this.emailCliente = emailCliente;
        this.rutCliente = rutCliente;
        this.telefonoCliente = telefonoCliente;
        this.estado = estado;
    }

    public long getCodigo() {
        return codigo;
    }

    public void setCodigo(long codigo) {
        this.codigo = codigo;
    }

    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public String getModeloProducto() {
        return modeloProducto;
    }

    public void setModeloProducto(String modeloProducto) {
        this.modeloProducto = modeloProducto;
    }

    public String getDescripcionProblema() {
        return descripcionProblema;
    }

    public void setDescripcionProblema(String descripcionProblema) {
        this.descripcionProblema = descripcionProblema;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getEmailCliente() {
        return emailCliente;
    }

    public void setEmailCliente(String emailCliente) {
        this.emailCliente = emailCliente;
    }

    public String getRutCliente() {
        return rutCliente;
    }

    public void setRutCliente(String rutCliente) {
        this.rutCliente = rutCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }
    
    
    
}
