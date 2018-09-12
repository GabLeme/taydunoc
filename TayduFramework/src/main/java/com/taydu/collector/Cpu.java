package com.taydu.collector;

import java.util.Map;
import java.util.Set;
import org.jutils.jhardware.HardwareInfo;
import org.jutils.jhardware.model.ProcessorInfo;

public class Cpu {
    public Integer cpuPercentage;
    
    public int getCpuPercentage() {
        //Here i refeer a ProcessorInfo class
        ProcessorInfo info = HardwareInfo.getProcessorInfo();
        //Creating a list of fullInformation
        Set<Map.Entry<String, String>> fullInfos = info.getFullInfo().entrySet();
        //Scrolling through the entire list to found the LoadPercentage of CPU
        fullInfos.forEach((fullInfo) -> {
            if (fullInfo.getKey().equals("LoadPercentage")) {
                cpuPercentage = Integer.parseInt(fullInfo.getValue());
            } else {
            }
        });
        //Return CPU Usage
        return cpuPercentage;
    }
    
}
