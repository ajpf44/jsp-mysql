<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/layout.css"/>
    </head>
    <body>
        <header id="topo"><h1>projeto java web</h1></header>

        <nav id="menu">
            <a target="areaform" href="formulariocadastrar.jsp">cadastro de clientes</a>
            <a target="areaform" href="consultar.jsp">consultar clientes</a>
            <a target="areaform" href="formularioedicao.jsp">alteração clientes</a>
            <a target="areaform" href="formularioexclusao.jsp">excluir clientes</a>
        </nav>
        <section>
            
            <iframe id="areaEdicao" src="" name="areaform">
                
            </iframe>
        </section>
        <footer id="rodape">
            <h1>rodapé &COPY; 2023.</h1>
        </footer>
    </body>
</html>
