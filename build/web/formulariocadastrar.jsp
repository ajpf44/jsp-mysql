<%-- 
    Document   : cadcli
    Created on : 5 de out de 2023, 19:00:40
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
        <form method="POST" action="cadastrar.jsp">

            <p>
                <label for="nome">nome</label>
                <input type="text" name="nome" id="nome">
            </p>
            <p>
                <label for="cpf">cpf</label>
                <input type="text" name="cpf" id="cpf">
            </p>
            <p>
                <label for="endereco">endereço</label>
                <input type="text" name="endereco" id="endereco">
            </p>
            <p>
                <label for="cidade">cidade</label>
                <input type="text" name="cidade" id="cidade">
            </p>
            <p>
                <label for="telefone">telefone</label>
                <input type="tel" name="telefone" id="telefone">
            </p>
            <p>
                <input type="submit" value="salvar" />
            </p>


        </form>
    </body>
</html>
