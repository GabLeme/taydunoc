/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.coletor;

/**
 *
 * @author gabriel.leme
 */
public class Processador extends Perifericos {

    /**
     * ******************\
     *
     * Método que retorna a porcentagem de uso da Cpu utilizando a super
     * classe Perifericos que contém acesso a API OSHI.
     *
     * @return int ********************
     */
    @Override
    public int getPorcentagemDeUso() {
        double percentage = processor.getSystemCpuLoad() * 100;
        percentage = Math.round(percentage);
        return this.porcentagemDeUso = (int) percentage;
    }

}
