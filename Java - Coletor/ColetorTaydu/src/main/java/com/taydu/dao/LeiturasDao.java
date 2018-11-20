/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.dao;

import com.taydu.coletor.DiscoRigido;
import com.taydu.coletor.MemoriaRam;
import com.taydu.coletor.Processador;
import com.taydu.services.Conexao;
import com.taydu.services.Serviços;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author gabriel.leme
 */
public class LeiturasDao {

    Conexao con = new Conexao();
    MemoriaRam mr = new MemoriaRam();
    DiscoRigido dr = new DiscoRigido();
    Processador ps = new Processador();

    /**
     * ******************\
     *
     * Método que acessa o banco de dados através da classe Conexão e insere
     * as informações coletadas de acordo com a Máquina referenciada pelo usuário.
     *
     * @throws java.lang.InterruptedException
     */
    public void inserirLeituras() throws InterruptedException {
        String sql = " INSERT INTO TBL_LEITURA VALUES ('" + mr.getPorcentagemDeUso() + "',"
                + "'" + dr.getPorcentagemDeUso() + "', '" + dr.getTempoAtividade() + "',"
                + "'" + ps.getPorcentagemDeUso() + "', '" + Serviços.COD_MAQUINA + "')";
        try {
            PreparedStatement pst = con.abrirConexao().prepareStatement(sql);
            pst.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
