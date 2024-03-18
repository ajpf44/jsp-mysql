<%-- 
    Document   : formularioexclusao
    Created on : 6 de out de 2023, 16:46:12
    Author     : FUNDEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exclusão de Registro</h1>

    <form action="excluir.jsp" method="post">
        <label for="cpf">CPF a ser excluído:</label>
        <input type="text" id="cpf" name="cpf"><br>

        <input type="submit" value="Excluir">
    </form>
    </body>
</html>
