package com.taydu.collector;

import oshi.SystemInfo;

public class GeneralInformation {

    public String osName;
    public String cpuName;

    public String getOperationalSystem() {
        //Here i refer a principal class from OSHI Library
        SystemInfo si = new SystemInfo();
        //Creating a String variable to store the name from operating system
        String osName = si.getOperatingSystem().toString();
        //Here is a gambiarra to get the clean name
        if (osName.contains("Microsoft Windows 10")) {
            osName = "Microsoft Windows 10";
        }
        //Add to my attribute
        this.osName = osName;
        //Return the name of operating system
        return osName;
    }

    public String getCpuName() {
        //Here i refer a principal class from OSHI Library
        SystemInfo si = new SystemInfo();
        //Creating a String variable to store the name from CPU
        String cpuName = si.getHardware().getProcessor().getName();
        //Add to my attribute
        this.cpuName = cpuName;
        //Return the name of CPU
        return cpuName;
    }
}
