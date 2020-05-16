<%-- 
    Document   : cadastrosfornecedor
    Created on : 11/05/2020, 15:38:12
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.BdFornecedor"%>
<%@page import="com.cad.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div style="text-align: center; font-family: verdana;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros de Fornecedor</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <h2>Cadastros de Fornecedor</h2>
        <%@include file="../WEB-INF/jspf/menufornecedor.jspf"%>
        <table border="1"> 
            <tr>
                <th>Nome do Fornecedor:</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>E-Mail</th>
                <th>Endereço</th>
                <th>Telefone</th>
                <th>Opções</th>
            <tr>
                <%for (Fornecedor user: BdFornecedor.getUserFornecedor()) {%>
            </tr>
            <td><%= user.getNomefornecedor()%></td>
            <td><%= user.getRazaosocialfornecedor()%></td>
            <td><%= user.getCnpjfornecedor() %></td>
            <td><%= user.getEmailfornecedor()%></td>
            <td><%= user.getEnderecofornecedor()%></td>
            <td><%= user.getTelefonefornecedor()%></td>
            
            <td>
                <%int i = BdFornecedor.getUserFornecedor().indexOf(user);%>
                <a href="editarfornecedor.jsp?i=<%=i%>">Alterar</a>
                <a href="excluirfornecedor.jsp?i=<%=i%>">Deletar</a>
            </td>
            </tr>
            <%}%>
        </table>
    </body>
</div>
        <footer>
            <%@include file="../WEB-INF/jspf/footer.jspf"%> 
        </footer>
</html>
        
