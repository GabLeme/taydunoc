package com.taydu.collector.dao;


import com.taydu.collector.HardDisk;
import com.taydu.connectionsql.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class HardDiskDAO {
    ConnectionFactory con = new ConnectionFactory();
    public void insertHardDisk() {
        HardDisk gi = new HardDisk();
        //Simple String command
        String sql = "INSERT INTO HardDisk (hdPercentage) Values(?)";
        try {
            //Its like a SQLCommand from C# with parameter. 
            PreparedStatement pst = con.getConnection().prepareStatement(sql);
            //Here i add parameters in the SQL Command.
            pst.setLong(1, gi.getHardDiskPercentage());
            //Here i execute my query
            pst.executeQuery();

        } catch (SQLException ex) {
            //Here i get all exceptions from my function
            System.out.println(ex);
        }
    }
}

