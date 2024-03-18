<%@page import="com.br.controller.Excluir"%>
<%@page  import="java.sql.*" %>
    <% 
    String cpf = request.getParameter("cpf"); 
    /*
    String query = "DELETE FROM clientes WHERE cpf = ?";
    String URL = "jdbc:mysql://localhost:3306/cadastro_java";
    String USERNAME = "root";
    String PASSWORD = "123456";
    try {
         Class.forName("com.mysql.cj.jdbc.Driver");  
          Connection connection =  DriverManager.getConnection(URL, USERNAME, PASSWORD);
         PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, cpf);
          preparedStatement.executeUpdate();
    }catch(SQLException e){
        e.printStackTrace();
    }
    */
        String query = "DELETE FROM clientes WHERE cpf = ?";
        Excluir ex = new Excluir(query);
        
        ex.setInfo(cpf);
        boolean result = ex.executeUpdate();
        
        if(result){
            out.println("Excluido com sucesso");
        }else{
            out.println("Problemas para excluir");
        }
        
    %>
    

    
