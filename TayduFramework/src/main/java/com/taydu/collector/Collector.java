package com.taydu.collector;

import java.io.File;
import java.util.Map;
import java.util.Set;
import org.jutils.jhardware.HardwareInfo;
import org.jutils.jhardware.model.ProcessorInfo;
import oshi.SystemInfo;
import oshi.hardware.HWDiskStore;
import oshi.hardware.NetworkIF;
import oshi.util.FormatUtil;

public class Collector {

    //BACKUP//
    
    
//    public String getOperationalSystem() {
//        SystemInfo si = new SystemInfo();
//        String osName = si.getOperatingSystem().toString();
//        if (osName.contains("Microsoft Windows 10")) {
//            osName = "Microsoft Windows 10";
//        }
//        return osName;
//    }
//
//    public String getCpuName() {
//        SystemInfo si = new SystemInfo();
//        String cpuName = si.getHardware().getProcessor().getName();
//        return cpuName;
//    }
//
//    public void cpuPercentage() {
//        ProcessorInfo info = HardwareInfo.getProcessorInfo();
//
//        Set<Map.Entry<String, String>> fullInfos = info.getFullInfo().entrySet();
//
//        for (final Map.Entry<String, String> fullInfo : fullInfos) {
//            if (fullInfo.getKey().equals("LoadPercentage")) {
//                System.out.println("CPUPercentage: " + fullInfo.getValue() + "%");
//                System.out.println("---------------------");
//            } else {
//            }
//        }
//    }
//
//    public void hardDiskPercentage() {
//        SystemInfo si = new SystemInfo();
//
//        HWDiskStore[] diskStores = si.getHardware().getDiskStores();
//        File[] root = File.listRoots();
//        long usedSpace = root[0].getTotalSpace() - root[0].getFreeSpace();
//        long hdPercentage = usedSpace * 100 / root[0].getTotalSpace();
//        System.out.println("HdPercentage: " + hdPercentage + "%");
//        System.out.println("---------------------");
//    }
//
//    public void memoryPercentage() {
//        SystemInfo si = new SystemInfo();
//        long memoryTotal = si.getHardware().getMemory().getTotal();
//        long availableMemory = si.getHardware().getMemory().getAvailable();
//        long usedMemory = memoryTotal - availableMemory;
//        long usageMemory = usedMemory * 100 / memoryTotal;
//        System.out.println("MemoryPercentage: " + usageMemory + "%");
//        System.out.println("---------------------");
//    }
//
//    public void networkInformation() {
//        SystemInfo si = new SystemInfo();
//        NetworkIF[] networkIFs = si.getHardware().getNetworkIFs();
//        long packetsSent = networkIFs[0].getPacketsSent();
//        long packetsReceived = networkIFs[0].getPacketsRecv();
//        System.out.println("PacketsSent: " + FormatUtil.formatBytesDecimal(packetsSent));
//        System.out.println("PacketsReceived: " + FormatUtil.formatBytesDecimal(packetsReceived));
//        System.out.println("---------------------");
//    }
}
