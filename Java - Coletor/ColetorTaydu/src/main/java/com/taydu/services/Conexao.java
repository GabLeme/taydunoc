/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author gabriel.leme
 */
public class Conexao {

    final String connectionString = "jdbc:sqlserver://projeto321.database.windows.net:1433;database=dbprojeto;user=projeto321@projeto321;password=Faculdadebandtec2018;encrypt=true;trustServerCertificate=true;hostNameInCertificate=projeto321.database.windows.net;loginTimeout=30;";

    /**
     * ******************\
     *
     * Método que estabelece conexão com o banco de dados.
     *
     * @return Connection 
     */
    public Connection abrirConexao() {
        try {
            return DriverManager.getConnection(connectionString);
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }
}