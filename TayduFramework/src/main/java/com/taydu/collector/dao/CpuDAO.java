package com.taydu.collector.dao;

import com.taydu.collector.Cpu;
import com.taydu.connectionsql.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CpuDAO {
    ConnectionFactory con = new ConnectionFactory();
    
    public void insertCpu() {
        Cpu cpu = new Cpu();
        //Simple String command
        String sql = "INSERT INTO CpuInfo (cpuPercentage) Values(?)";
        try {
            //Its like a SQLCommand from C# with parameter. 
            PreparedStatement pst = con.getConnection().prepareStatement(sql);
            //Here i add parameters in the SQL Command.
            pst.setInt(1, cpu.getCpuPercentage());
            //Here i execute my query
            pst.executeQuery();

        } catch (SQLException ex) {
            //Here i get all exceptions from my function
            System.out.println(ex);
        }
    }
}
