/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.br.database;

import java.sql.*;

public class ConnectDB {

    private String URL = "jdbc:mysql://localhost:3306/cadastro_java";
    private String USERNAME = "root";
    private String PASSWORD = "123456";
    private String query;
    
    public ConnectDB(String query) {
        this.query = query;
    }

    public PreparedStatement getPreparedStatement() {
        PreparedStatement ps = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(Exception e){
            System.out.println(e);
        }
        
        try {
            
            Connection connection = DriverManager.getConnection(this.URL, this.USERNAME, this.PASSWORD);
            ps = connection.prepareStatement(this.query);
        }catch ( SQLException e) {
            System.out.println(e); // Lida com erros de conexão
        }
        
        return ps;
    }
    
    
}
