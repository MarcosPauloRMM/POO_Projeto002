<%-- 
    Document   : cadastros
    Created on : 06/05/2020, 20:38:39
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.Usuario"%>
<%@page import="com.cad.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros - Cadastro de Usuarios</title>
    </head>
    <body>
        <h1>Cadastro de Usuarios:</h1>
        <h2>Novo Cadastro:</h2>
        <li><a href="novo.jsp">Adicionar Novo Usuário</a><br/><br/></li>
        <hr>
        <table border="1"> 
            <tr>
                <th>Nome do Usuario</th>
                <th>E-mail</th>
                <th>Comandos</th>
            <tr>
                <%for (Usuario user: Bd.getUsers()) {%>
            </tr>
            <td><%= user.getNome()%></td>
            <td><%= user.getEmail()%></td>
            <td>
                <%int i = Bd.getUsers().indexOf(user);%>
                <a href="editar.jsp?i=<%=i%>">Alterar</a>
                <a href="deletar.jsp?i=<%=i%>">Deletar</a>
            </td>
           
            </tr>
            <%}%>
        </table>
    </body>
</html>
