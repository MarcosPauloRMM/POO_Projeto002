<%-- 
    Document   : home
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
    DadosCliente dados = new DadosCliente(null, null, null, null, null, null);
    if(request.getParameter("index")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        dados = DbCliente.getDados().get(index);
    }
    
    if(request.getParameter("cancel") != null){
        response.sendRedirect("lista.jsp");
    }if(request.getParameter("set") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nomecliente = request.getParameter("nomecliente");
        String cpfcliente = request.getParameter("cpfcliente");
        String rgcliente = request.getParameter("rgcliente");
        String telefonecliente = request.getParameter("telefonecliente");
        String emailcliente = request.getParameter("emailcliente");
        String enderecocliente = request.getParameter("enderecocliente");
        DadosCliente c = new DadosCliente(nomecliente, cpfcliente, rgcliente, telefonecliente, emailcliente, enderecocliente);
        DbCliente.getDados().set(index, c);
        response.sendRedirect("lista.jsp");
    }

%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/home.jspf" %>
        <center>
        <h2>Alterar</h2>
         <form>
            Índice:<br/>
            <%= request.getParameter("index")%></br>
            <input type="hidden" name="index"
                   value="<%=request.getParameter("index")%>"/> <br/>
            Nome:<br/>
            <input type="text" name="nomecliente"
                   value="<%=dados.getNomecliente()%>"/><br/>
            Nome:<br/>
            <input type="text" name="cpfcliente"
                   value="<%=dados.getCpfcliente()%>"/><br/>
            Nome:<br/>
            <input type="text" name="rgcliente"
                   value="<%=dados.getRgcliente()%>"/><br/>
            Nome:<br/>
            <input type="text" name="telefonecliente"
                   value="<%=dados.getTelefonecliente()%>"/><br/>
            Email:<br/>
            <input type="text" name="emailcliente"
                    value="<%=dados.getEmailcliente()%>"/><br/>
           Telefone:<br/>
            <input type="text" name="enderecocliente"
                   value="<%=dados.getEnderecocliente()%>"/><br/><br/>
            
            <input type="submit" class="botão" name="set" value="Alterar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
       </center>
       <%@include file="../WEB-INF/jspf/footer.jspf"%>            
    </body>
</html>
