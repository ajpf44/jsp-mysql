/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package com.br.controller;

import java.util.ArrayList;

public class ClassePrincipal {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        String query="select * from clientes";
        Consultar c = new Consultar(query);
        ArrayList<String[]> results = c.getResult();
       
        for(String[] arrStr: results){
            for(String s: arrStr){
                System.out.printf(s + ", ");
            }
            System.out.println("");
        }      
        
        
    }
    
}
