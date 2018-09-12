/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.taydu.services;

import com.taydu.connectionsql.ConnectionFactory;
import com.taydu.entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gabriel.leme
 */
public class Services {
    ConnectionFactory con = new ConnectionFactory();
    User user = new User();
    
        //@Return the response if user are true or false 
        public boolean authenticateUser(String usuario, String senha) {
        String sql = "SELECT usuario, senha from Usuario where usuario=? and senha=?";
        try {
            PreparedStatement pst = con.getConnection().prepareStatement(sql);
            pst.setString(1, usuario);
            pst.setString(2, senha);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                //Add to attribute name the userName
                user.name = rs.getString(1);
                return true;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return false;
    }
}
