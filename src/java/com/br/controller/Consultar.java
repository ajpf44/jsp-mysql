/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.br.controller;

import com.br.database.ConnectDB;
import java.sql.*;
import java.util.ArrayList;

public class Consultar {
    public PreparedStatement ps;
    private final ArrayList<String[]> resultList = new ArrayList<>();

    public Consultar(String query) {
        ConnectDB db = new ConnectDB(query);
        this.ps = db.getPreparedStatement();
    }
    
    public ArrayList<String[]> getResult(){
        ResultSet resultSet;
        try{
            resultSet= ps.executeQuery();
            while (resultSet.next()) {
                String[] arrStr = {
                            resultSet.getString("cpf"),
                            resultSet.getString("nome"),
                            resultSet.getString("endereco"),
                            resultSet.getString("cidade"),
                            resultSet.getString("telefone")
                        };
                resultList.add(arrStr);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        
        return resultList;
    }
}
