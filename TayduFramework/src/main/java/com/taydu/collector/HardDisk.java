package com.taydu.collector;

import java.io.File;
import oshi.SystemInfo;

public class HardDisk {

    public Long hdPercentage;

    public long getHardDiskPercentage() {
        //Here i refer a principal class from OSHI Library
        SystemInfo si = new SystemInfo();
        //Creating a vector variable to store all my hard disks
        File[] root = File.listRoots();
        //Calculating the usage space from my principal hard disk
        long usedSpace = root[0].getTotalSpace() - root[0].getFreeSpace();
        //Calculating the usage percentage from my hard disk
        long hdPercentage = usedSpace * 100 / root[0].getTotalSpace();
        //Add to my attribute
        this.hdPercentage = hdPercentage;
        //Return the usage
        return hdPercentage;
    }

}
