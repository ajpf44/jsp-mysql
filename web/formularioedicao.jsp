

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edição de Dados</title>
</head>
<body>
    <h1>Edição de Dados</h1>

    <form action="editar.jsp" method="post">
        <label for="cpf">CPF a ser editado:</label>
        <input type="text" id="cpf" name="cpf"><br>

        <label for="novoNome">Novo Nome:</label>
        <input type="text" id="novoNome" name="novoNome"><br>

        <label for="novoEndereco">Novo Endereço:</label>
        <input type="text" id="novoEndereco" name="novoEndereco"><br>

        <label for="novaCidade">Nova Cidade:</label>
        <input type="text" id="novaCidade" name="novaCidade"><br>

        <label for="novoTelefone">Novo Telefone:</label>
        <input type="text" id="novoTelefone" name="novoTelefone"><br>

        <input type="submit" value="Atualizar">
    </form>
</body>
</html>
