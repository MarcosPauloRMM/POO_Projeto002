<%-- 
    Document   : index
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.DbCliente"%>
<%@page import="br.com.fatecpg.nome.DadosCliente"%>
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
                    <th>Nome Cliente</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Comandos</th>
                </tr>
                <%for (DadosCliente c : DbCliente.getDados()) {%>
                <tr>
                    <td><%= DbCliente.getDados().indexOf(c)%></td>
                    <td><%= c.getNomecliente()%></td>
                    <td><%= c.getCpfcliente()%></td>
                    <td><%= c.getRgcliente()%></td>
                    <td><%= c.getEmailcliente()%></td>
                    <td><%= c.getTelefonecliente()%></td>
                    <td><%= c.getEnderecocliente()%></td>
                    <td>
                        <a href="alterar.jsp?index=<%=DbCliente.getDados().indexOf(c)%>">Alterar</a>
                        <a> / </a>
                        <a href="excluir.jsp?index=<%=DbCliente.getDados().indexOf(c)%>">Excluir</a>
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
