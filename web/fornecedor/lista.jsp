<%-- 
    Document   : index
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.DbFornecedor"%>
<%@page import="br.com.fatecpg.nome.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../CSS/main.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/home.jspf" %>
        <div style="text-align: center">
            
            <h2>Índice</h2>
            <h3><a href="incluir.jsp">Adicionar</a></h3>
            
            <center>
            <table width="700" style="text-align: center">
                <tr>
                    <th>Índice</th>
                    <th>Nome</th>
                    <th>Razão Social</th>
                    <th>CNPJ</th>
                    <th>Email</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Comandos</th>
                </tr>
                <%for (DadosFornecedor c : DbFornecedor.getDados()) {%>
                <tr>
                    <td><%= DbFornecedor.getDados().indexOf(c)%></td>
                    <td><%= c.getNomefornecedor()%></td>
                    <td><%= c.getRazaosocialfornecedor()%></td>
                    <td><%= c.getCnpjfornecedor()%></td>
                    <td><%= c.getEmailfornecedor()%></td>
                    <td><%= c.getEnderecofornecedor()%></td>
                    <td><%= c.getTelefonefornecedor()%></td>
                    <td>
                        <a href="alterar.jsp?index=<%=DbFornecedor.getDados().indexOf(c)%>">Alterar</a>
                        <a> / </a>
                        <a href="excluir.jsp?index=<%=DbFornecedor.getDados().indexOf(c)%>">Excluir</a>
                    </td>
                </tr>
                <%}%>
            </table>
            </center>
            <br/>
        </div>
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
