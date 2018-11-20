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
public class MemoriaRam extends Perifericos {

    /**
     * ******************\
     *
     * Método que retorna a porcentagem de uso da memória ram utilizando a 
     * super classe Perifericos que contém acesso a API OSHI.
     *
     * @return int ********************
     */
    @Override
    public int getPorcentagemDeUso() {
        long totalMemoria = si.getHardware().getMemory().getTotal();
        long memoriaDisponivel = si.getHardware().getMemory().getAvailable();
        long memoriaUsada = totalMemoria - memoriaDisponivel;
        long temp = memoriaUsada * 100 / totalMemoria;
        return this.porcentagemDeUso = (int) temp;
    }
}
