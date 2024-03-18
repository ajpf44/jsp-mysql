/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.br.controller;

import java.sql.*;
import com.br.database.ConnectDB;

/**
 *
 * @author 50133232023.1
 */
public class Excluir {

    private final PreparedStatement ps;

    public Excluir(String query) {
        ConnectDB db = new ConnectDB(query);
        this.ps = db.getPreparedStatement();
    }
    
    public void setInfo(String cpf) {
        try {
            this.ps.setString(1, cpf);
        } catch (SQLException e) {
            System.out.println("Error setting info");
        }
    }
    public boolean executeUpdate(){
        try {
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("Error executing");
            return false;
        }
    }
}
