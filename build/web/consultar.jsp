
<%@page import="java.util.ArrayList"%>
<%@page import="com.br.controller.Consultar"%>
<%@page import="java.sql.*" %>
<% 
    /*
    String query="select * from clientes";
    String URL = "jdbc:mysql://localhost:3306/cadastro_java";
    String USERNAME = "root";
    String PASSWORD = "123456";
    try {
         
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection connection =  DriverManager.getConnection(URL, USERNAME, PASSWORD);
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                // Processar os resultados da consulta
                // Exemplo: Imprimir os resultados
                out.println("CPF: " + resultSet.getString("cpf") + "<br>");
                out.println("Nome: " + resultSet.getString("nome") + "<br>");
                out.println("Endereço: " + resultSet.getString("endereco") + "<br>");
                out.println("Cidade: " + resultSet.getString("cidade") + "<br>");
                out.println("Telefone: " + resultSet.getString("telefone") + "<br>");
                out.println("<hr>");
            }
        } catch ( SQLException e) {
            e.printStackTrace(); // Lida com erros de conexão
        }
    
   */
        
    String query="SELECT * FROM clientes";
    Consultar c = new Consultar(query);
    ArrayList<String[]> results = c.getResult();
    out.println("NOME, CPF, ENDERECO, CIDADE, TELEFONE");
    for(String[] arrStr: results){
        for(String s: arrStr){
            out.print(s + ", ");
        }
        out.println("");
    }

%>