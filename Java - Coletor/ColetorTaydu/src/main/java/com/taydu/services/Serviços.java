/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gabriel.leme
 */
public class Serviços {

    public static int COD_MAQUINA;
    public static int COD_USUARIO;

    Conexao con = new Conexao();

    /**
     * ******************\
     *
     * Método que acessa o banco através da classe Conexao e verifica se o
     * usuário/maquina é existente no banco de acordo com o argumento passado no
     * método.
     *
     * @param EMAIL
     * @param SENHA
     * @param COD_MAQUINA
     * @return boolean ********************
     */
    public boolean autenticaUsuario(String EMAIL, String SENHA, int COD_MAQUINA) {
        String sql = "SELECT TBL_MAQUINA.COD_USUARIO, EMAIL, SENHA, COD_MAQUINA FROM TBL_MAQUINA, TBL_USUARIO WHERE \n"
                + "TBL_MAQUINA.COD_USUARIO = TBL_USUARIO.COD_USUARIO\n"
                + " AND EMAIL = ? AND SENHA = ? AND COD_MAQUINA = ?";
        try {
            PreparedStatement pst = con.abrirConexao().prepareStatement(sql);
            pst.setString(1, EMAIL);
            pst.setString(2, SENHA);
            pst.setInt(3, COD_MAQUINA);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                this.COD_USUARIO = rs.getInt("COD_USUARIO");
                this.COD_MAQUINA = COD_MAQUINA;
                return true;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return false;
    }

    /**
     * ******************\
     *
     * Método que acessa o banco através da classe conexão e verifica
     * se a máquina já está ligada em algum computador, caso esteja
     * a ViewDeControle não irá inserir dados referentes a aquele COD_MAQUINA
     * para não causar conflitos no Banco de Dados.
     *
     * @return boolean ********************
     */ 
    public boolean verificaMaquinaLigada() {
        String sql = "SELECT ATIVA FROM TBL_MAQUINA WHERE COD_MAQUINA = ? AND ATIVA = ?";
        try {
            PreparedStatement pst = con.abrirConexao().prepareStatement(sql);
            pst.setInt(1, COD_MAQUINA);
            pst.setString(2, "ON");
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return false;
    }
}
