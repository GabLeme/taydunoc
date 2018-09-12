package com.taydu.collector.dao;

import com.taydu.collector.GeneralInformation;
import com.taydu.connectionsql.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class GeneralInformationDAO {

    ConnectionFactory con = new ConnectionFactory();

    public void insertGeneralInformation() {
        GeneralInformation gi = new GeneralInformation();
        //Simple String command
        String sql = "INSERT INTO OperationalSystem (cpuName, osName) Values(?, ?)";
        try {
            //Its like a SQLCommand from C# with parameter. 
            PreparedStatement pst = con.getConnection().prepareStatement(sql);
            //Here i add parameters in the SQL Command
            pst.setString(1, gi.getCpuName());
            pst.setString(2, gi.getOperationalSystem());
            //Here i execute my query
            pst.executeQuery();

        } catch (SQLException ex) {
            //Here i get all exceptions from my function
            System.out.println(ex);
        }
    }
}
