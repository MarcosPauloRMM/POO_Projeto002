<%-- 
    Document   : incluir
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.DbFornecedor"%>
<%@page import="br.com.fatecpg.nome.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../CSS/main.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("lista.jsp");
    }if(request.getParameter("add") != null){
        String nomefornecedor = request.getParameter("nomefornecedor");
        String razaosocialfornecedor = request.getParameter("razaosocialfornecedor");
        String cnpjfornecedor = request.getParameter("cnpjfornecedor");
        String emailfornecedor = request.getParameter("emailfornecedor");
        String enderecofornecedor = request.getParameter("enderecofornecedor");
        String telefonefornecedor = request.getParameter("telefonefornecedor");
        DadosFornecedor c = new DadosFornecedor(nomefornecedor, razaosocialfornecedor,cnpjfornecedor, emailfornecedor, enderecofornecedor,telefonefornecedor);
        DbFornecedor.getDados().add(c);
        response.sendRedirect("lista.jsp");
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Incluir</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/home.jspf"%>
        <center>
        <h2>Adicionar</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nomefornecedor"/><br>
            Razão Social:<br/>
            <input type="text" name="razaosocialfornecedor"/><br>
            CNPJ:<br/>
            <input type="text" name="cnpjfornecedor"/><br>
            Email:<br/>
            <input type="text" name="emailfornecedor"/><br>
            Endereço:<br/>
            <input type="text" name="enderecofornecedor"/><br>
            Telefone:<br/>
            <input type="text" name="telefonefornecedor"/><br></br>
            
            <input type="submit" class="botão" name="add" value="Adicionar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
