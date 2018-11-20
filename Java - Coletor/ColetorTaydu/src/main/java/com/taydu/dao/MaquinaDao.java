/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.dao;

import com.taydu.services.Conexao;
import com.taydu.services.Serviços;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author gabriel.leme
 */
public class MaquinaDao {

    Conexao con = new Conexao();

    /**
     * ******************\
     *
     * Método que acessa o banco através da classe Conexao e atualiza a máquina
     * que está sendo utilizada pelo coletor alterando seu Status ATIVA para =
     * "ON".
     *
     */
    public void ligarMaquina() {
        String sql = "UPDATE dbo.TBL_MAQUINA SET ATIVA = ? WHERE COD_MAQUINA = ? AND COD_USUARIO = ?";
        try {
            PreparedStatement pst = con.abrirConexao().prepareStatement(sql);
            pst.setString(1, "ON");
            pst.setInt(2, Serviços.COD_MAQUINA);
            pst.setInt(3, Serviços.COD_USUARIO);
            pst.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    /**
     * ******************\
     *
     * Método que acessa o banco através da classe Conexao e atualiza a máquina
     * que está sendo utilizada pelo coletor alterando seu Status ATIVA para =
     * "OFF".
     *
     */
    public void desligarMaquina() {
        String sql = "UPDATE dbo.TBL_MAQUINA SET ATIVA = ? WHERE COD_MAQUINA = ? AND COD_USUARIO = ?";
        try {
            PreparedStatement pst = con.abrirConexao().prepareStatement(sql);
            pst.setString(1, "OFF");
            pst.setInt(2, Serviços.COD_MAQUINA);
            pst.setInt(3, Serviços.COD_USUARIO);
            pst.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
