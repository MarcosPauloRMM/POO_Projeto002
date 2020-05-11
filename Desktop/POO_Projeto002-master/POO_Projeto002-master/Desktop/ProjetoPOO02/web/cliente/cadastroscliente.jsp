<%-- 
    Document   : cadastroscliente
    Created on : 11/05/2020, 15:35:47
    Author     : User
--%>
<%@page import="com.cad.BdCliente"%>
<%@page import="com.cad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros de Cliente</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <h2>Cadastros de Cliente:</h2>
        <li><a href="novocliente.jsp">Adicionar Novo Cliente</a><br/><br/></li>
        <hr>
        <table border="1"> 
            <tr>
                <th>Nome do Cliente</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-Mail</th>
                <th>Endereço</th>
                <th>Opções</th>
            <tr>
                <%for (Cliente user: BdCliente.getUsercliente()) {%>
            </tr>
            <td><%= user.getNomecliente()%></td>
            <td><%= user.getCpf()%></td>
            <td><%= user.getRg()%></td>
            <td><%= user.getEmailcliente()%></td>
            <td><%= user.getEnderecocliente()%></td>
            <td>
                <%int i = BdCliente.getUsercliente().indexOf(user);%>
                <a href="editarcliente.jsp?i=<%=i%>">Alterar</a>
                <a href="excluircliente.jsp?i=<%=i%>">Deletar</a>
            </td>
           
            </tr>
            <%}%>
        </table>
    </body>
</html>

    </body>
</html>
        