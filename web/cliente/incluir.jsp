<%-- 
    Document   : incluir
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.DbCliente"%>
<%@page import="br.com.fatecpg.nome.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../CSS/main.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("lista.jsp");
    }if(request.getParameter("add") != null){
        String nomecliente = request.getParameter("nomecliente");
        String cpfcliente = request.getParameter("cpfcliente");
        String rgcliente = request.getParameter("rgcliente");
        String telefonecliente = request.getParameter("telefonecliente");
        String emailcliente = request.getParameter("emailcliente");
        String enderecocliente = request.getParameter("enderecocliente");
        DadosCliente c = new DadosCliente(nomecliente, cpfcliente, rgcliente, telefonecliente, emailcliente, enderecocliente);
        DbCliente.getDados().add(c);
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
            <input type="text" name="nomecliente"/><br>
            CPF:<br/>
            <input type="text" name="cpfcliente"/><br>
            RG:<br/>
            <input type="text" name="rgcliente"/><br>
            Telefone:<br/>
            <input type="text" name="telefonecliente"/><br>
            Email:<br/>
            <input type="text" name="emailcliente"/><br>
            Endereço:<br/>
            <input type="text" name="enderecocliente"/><br>
            
            <input type="submit" class="botão" name="add" value="Adicionar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
        </center>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
