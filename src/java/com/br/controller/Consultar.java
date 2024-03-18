/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.br.controller;

import com.br.database.ConnectDB;
import java.sql.*;

public class Consultar {
    public PreparedStatement ps;

    public Consultar(String query) {
        ConnectDB db = new ConnectDB(query);
        this.ps = db.getPreparedStatement();
    }
}
