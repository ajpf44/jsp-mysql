<%@page import="com.br.controller.Editar"%>
<%@page  import="java.sql.*" %>
<% 

 String cpf = request.getParameter("cpf"); 
 String novoNome = request.getParameter("novoNome");
 String novoEndereco = request.getParameter("novoEndereco"); 
 String novaCidade = request.getParameter("novaCidade"); 
 String novoTelefone = request.getParameter("novoTelefone"); 
 

/*
String query = "UPDATE clientes SET nome = ?, endereco = ?, cidade = ?, telefone = ? WHERE cpf = ?";
   String URL = "jdbc:mysql://localhost:3306/cadastro_java";
   String USERNAME = "root";
   String PASSWORD = "123456";


try{
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection connection =  DriverManager.getConnection(URL, USERNAME, PASSWORD);
    PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, novoNome);
            preparedStatement.setString(2, novoEndereco);
            preparedStatement.setString(3, novaCidade);
            preparedStatement.setString(4, novoTelefone);
            preparedStatement.setString(5, cpf);
            preparedStatement.executeUpdate();
           out.println("Edição realizada com sucesso!");
   }catch(SQLException e){
        e.printStackTrace();
   }

    */
    String query = "UPDATE clientes SET nome = ?, endereco = ?, cidade = ?, telefone = ? WHERE cpf = ?";
    Editar cd = new Editar(query);
    
    String[] args = {novoNome,novoEndereco,novaCidade,novoTelefone, cpf};
    cd.setInfo(args);
    
    boolean result = cd.executeUpdate();
    if(result){
        out.println("Atualizado com sucesso");
    }else{
        out.println("Problemas, não atualizado");
    }
%>