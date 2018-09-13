
package com.taydu.connectionsql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {

    String connectionString = "jdbc:sqlserver://projeto321.database.windows.net:1433;database=dbprojeto;user=projeto321@projeto321;password=Faculdadebandtec2018;encrypt=true;trustServerCertificate=true;hostNameInCertificate=projeto321.database.windows.net;loginTimeout=30;";

    public Connection getConnection() {
        try {
            return DriverManager.getConnection(connectionString);
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }
}
