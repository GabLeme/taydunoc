
package com.taydu.collector.dao;

import com.taydu.collector.Memory;
import com.taydu.connectionsql.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemoryDAO {
    ConnectionFactory con = new ConnectionFactory();
    public void insertMemory() {
        Memory my = new Memory();
        //Simple String command
        String sql = "INSERT INTO Memory (memoryPercentage) Values(?)";
        try {
            //Its like a SQLCommand from C# with parameter.
            PreparedStatement pst = con.getConnection().prepareStatement(sql);
            //Here i add parameters in the SQL Command.
            pst.setLong(1, my.getMemoryPercentage());
            //Here i execute my query
            pst.executeQuery();

        } catch (SQLException ex) {
            //Here i get all exceptions from my function
            System.out.println(ex);
        }
    }
}
