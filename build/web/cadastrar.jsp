<%@page import="com.br.controller.Cadastrar"%>
<%@page import="java.sql.*" %>

<%
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String endereco = request.getParameter("endereco");
    String cidade = request.getParameter("cidade");
    String telefone = request.getParameter("telefone");%>

<%=nome %> 
<%=cpf %> 
<%=endereco %> 
<%=cidade %> 
<%=telefone %> 


<%    

    /*
    String query = "INSERT INTO clientes VALUES(null,?,?,?,?,?)" ;
    String URL = "jdbc:mysql://localhost:3306/cadastro_java";
    String USERNAME = "root";
    String PASSWORD = "123456";

try {
          Class.forName("com.mysql.cj.jdbc.Driver");  
          Connection connection =  DriverManager.getConnection(URL, USERNAME, PASSWORD);
          PreparedStatement preparedStatement = connection.prepareStatement(query);
          preparedStatement.setString(1, cpf);
          preparedStatement.setString(2, nome);
          preparedStatement.setString(3, endereco);
          preparedStatement.setString(4, cidade);
          preparedStatement.setString(5, telefone);
          preparedStatement.executeUpdate();
           out.println("Cadastro realizado com sucesso!");
        } catch ( SQLException e) {
            e.printStackTrace(); // Lida com erros de conexão
        }
*/
    String query = "INSERT INTO clientes VALUES(null,?,?,?,?,?)";
    Cadastrar cd = new Cadastrar(query);
    
    String[] args = {cpf, nome,endereco,cidade,telefone};
    cd.setInfo(args);
    
    boolean result = cd.executeUpdate();
    if(result){
        out.println("Cadastrado");
    }else{
        out.println("Problemas, não cadastrado");
    }
    
    
%>