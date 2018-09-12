package com.taydu.collector;

import oshi.SystemInfo;

public class Memory {
    public long usageMemory;
    
    public long getMemoryPercentage() {
        //Here i refer a principal class from OSHI Library
        SystemInfo si = new SystemInfo();
        //Creating a Long variable to store the total size from my memory
        long memoryTotal = si.getHardware().getMemory().getTotal();
        //Creating a Long variable to store the available size from my memory
        long availableMemory = si.getHardware().getMemory().getAvailable();
        //Creating a Long variable to store the used size from my memory
        long usedMemory = memoryTotal - availableMemory;
        //Calculating the percentage of memory usage
        long usageMemory = usedMemory * 100 / memoryTotal;
        //Add to my attribute 
        this.usageMemory = usageMemory;
        //Return the Percentage of Memory Usage
        return usageMemory;
    }
}
