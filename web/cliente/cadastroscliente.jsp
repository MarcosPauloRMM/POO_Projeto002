<%-- 
    Document   : cadastroscliente
    Created on : 11/05/2020, 15:35:47
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>
<%@page import="com.cad.BdCliente"%>
<%@page import="com.cad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div style="text-align: center; font-family: verdana;">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros de Cliente</title>
    </head>
    <body>
        <h1>Cadastro Web:</h1>
        <h2>Cadastros de Cliente:</h2>
        <%@include file="../WEB-INF/jspf/menucliente.jspf"%> 
        <table border="1"> 
            <tr>
                <th>Nome do Cliente</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-Mail</th>
                <th>Endereço</th>
                <th>Telefone</th>
                <th>Opções</th>
            <tr>
                <%for (Cliente user: BdCliente.getUsercliente()) {%>
            </tr>
            <td><%= user.getNomecliente()%></td>
            <td><%= user.getCpfcliente()%></td>
            <td><%= user.getRgcliente()%></td>
            <td><%= user.getEmailcliente()%></td>
            <td><%= user.getEnderecocliente()%></td>
            <td><%= user.getTelefonecliente()%></td>
            <td>
                <%int i = BdCliente.getUsercliente().indexOf(user);%>
                <a href="editarcliente.jsp?i=<%=i%>">Alterar</a>
                <a href="excluircliente.jsp?i=<%=i%>">Deletar</a>
            </td>
            </tr>
            <%}%>
        </table>
    </body>

    </div>
        <footer>
            <%@include file="../WEB-INF/jspf/footer.jspf"%> 
        </footer> </div>
</html>
        
