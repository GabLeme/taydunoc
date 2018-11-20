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
public class DiscoRigido extends Perifericos {

    /**
     * ******************\
     *
     * Método que retorna porcentagem de uso do HD, acessa a API Oshi via
     * super classe.
     *
     * @return int ********************
     */
    @Override
    public int getPorcentagemDeUso() {
        long espacoUsado = root[0].getTotalSpace() - root[0].getFreeSpace();
        long porcentagem = espacoUsado * 100 / root[0].getTotalSpace();
        return this.porcentagemDeUso = (int) porcentagem;
    }

    /**
     * ******************\
     *
     * Método que retorna o tempo de atividade do HD, acessa a API Oshi via
     * super classe. OBS: Testado apenas em Windows.
     *
     * @return int ********************
     * @throws java.lang.InterruptedException
     */
    public int getTempoAtividade() throws InterruptedException {
        long tempoAnterior = System.currentTimeMillis();
        long transferAnterior = hd[0].getTransferTime();
        Thread.sleep(1000);
        hd[0].updateDiskStats();
        long tempoAtual = System.currentTimeMillis();
        long transferAtual = hd[0].getTransferTime();
        int tempoDelta = (int) (tempoAtual - tempoAnterior);
        int transferDelta;
        int perc;
        tempoAnterior = tempoAtual;
        if (transferAtual > transferAnterior) {
            transferDelta = (int) (transferAtual - transferAnterior);
            transferAnterior = transferAtual;
            perc = (100 * transferDelta) / tempoDelta;
            if (perc >= 100) {
                perc = 100;
            }
        } else {
            perc = 0;
            transferDelta = 0;
        }
        return perc;
    }
}
