package com.taydu.entity;

import com.taydu.connectionsql.ConnectionFactory;


public class User {
    ConnectionFactory con = new ConnectionFactory();
    
    //Add attributes to entity user
    public static String name;
    public static Integer codUser;
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public Integer codUser(){
        return codUser;
    }
    

    
}