/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author DellPC
 */
public class Conexion {
    String USERNAME = "root"; // usuario de la base de datos
    String PASSWORD = ""; // password del usuario de la base de datos
    String BD = "tecnosmart"; // variable para el nombre de nuestra base de datos
    String DRIVER = "com.mysql.jdbc.Driver"; // driver de jdbc para mysql
    String URL = "jdbc:mysql://localhost:3306/"; // inicio de la cadena de conexion
    
    Connection conn; // variable tipo Connection para la conexion a base de datos
    
    // este metodo permite conectar con la base de datos
    public void Conexion() throws ClassNotFoundException, SQLException {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL+BD,USERNAME,PASSWORD);
            }
    
    //este metodo permite desconectar la base de datos
    public void desconectar() throws SQLException{
        if(!conn.isClosed()){
            conn.close();
        }
    }
    //este metodo obtiene un statemet a partir de la conexion
    //el statement permite ejecutar sentencias en la base de datos
    public Statement obtenerStatement() throws SQLException{
        return conn.createStatement();
    }
    //este metodo obteiene un preparedStatement con una sentencia pre configurada
    //para ejecutar una sentencia con parametros en la base de datos
    public PreparedStatement obtenerPS(String sentencia) throws SQLException{
        return conn.prepareStatement(sentencia);
    }
 }
