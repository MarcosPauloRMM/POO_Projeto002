<%-- 
    Document   : home
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.DadosCliente"%>
<%@page import="br.com.fatecpg.nome.DbCliente"%>
<%@page import="br.com.fatecpg.nome.DbFornecedor"%>
<%@page import="br.com.fatecpg.nome.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <main>
            <div class="team">
                </br>
                <h2>Projeto 02</h2>
                </br>
                <div>
                    <p>Aplicação desenvolvida em Java Web para controle de cadastros.</p>
                    <p>Clientes / Fornecedores</p>
            </div>
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
