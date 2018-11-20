/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.coletor;

import java.io.File;
import oshi.SystemInfo;
import oshi.hardware.CentralProcessor;
import oshi.hardware.HWDiskStore;
import oshi.hardware.HardwareAbstractionLayer;

/**
 *
 * @author gabriel.leme
 */
public class Perifericos {

    /**
     * ******************\
     *
     * Super Classe Periféricos que contém todos atributos e métodos em comum
     * dos periféricos que serão coletados, oferece também, acesso a API Oshi.
     *
     * @return OSHI ********************
     */
    SystemInfo si = new SystemInfo();
    HardwareAbstractionLayer hw = si.getHardware();
    CentralProcessor processor = hw.getProcessor();
    HWDiskStore[] hd = hw.getDiskStores();
    File[] root = File.listRoots();

    public int porcentagemDeUso;

    public int getPorcentagemDeUso() {
        return porcentagemDeUso;
    }

    public void setPorcentagemDeUso(int porcentagemDeUso) {
        this.porcentagemDeUso = porcentagemDeUso;
    }
}
