<%-- 
    Document   : home
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
    DadosFornecedor dados = new DadosFornecedor(null, null, null, null, null, null);
    if(request.getParameter("index")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        dados = DbFornecedor.getDados().get(index);
    }
    
    if(request.getParameter("cancel") != null){
        response.sendRedirect("lista.jsp");
    }if(request.getParameter("set") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nomefornecedor = request.getParameter("nomefornecedor");
        String razaosocialfornecedor = request.getParameter("razaosocialfornecedor");
        String cnpjfornecedor = request.getParameter("cnpjfornecedor");
        String emailfornecedor = request.getParameter("emailfornecedor");
        String enderecofornecedor = request.getParameter("enderecofornecedor");
        String telefonefornecedor = request.getParameter("telefonefornecedor");
        DadosFornecedor c = new DadosFornecedor(nomefornecedor, razaosocialfornecedor,cnpjfornecedor, emailfornecedor, enderecofornecedor,telefonefornecedor);
        DbFornecedor.getDados().set(index, c);
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
            <input type="text" name="nomefornecedor"
                   value="<%=dados.getNomefornecedor()%>"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaosocialfornecedor"
                   value="<%=dados.getRazaosocialfornecedor()%>"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpjfornecedor"
                   value="<%=dados.getCnpjfornecedor()%>"/><br/>
            Email:<br/>
            <input type="text" name="emailfornecedor"
                    value="<%=dados.getEmailfornecedor()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="enderecofornecedor"
                   value="<%=dados.getEnderecofornecedor()%>"/><br/>
           Telefone:<br/>
            <input type="text" name="telefonefornecedor"
                   value="<%=dados.getTelefonefornecedor()%>"/><br/><br/>
            
            <input type="submit" class="botão" name="set" value="Alterar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
       </center>
       <%@include file="../WEB-INF/jspf/footer.jspf"%>            
    </body>
</html>
