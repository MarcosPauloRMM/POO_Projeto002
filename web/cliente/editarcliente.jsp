<%-- 
    Document   : editarcliente
    Created on : 11/05/2020, 18:44:22
    Author     : Alana
--%>

<%@page import="com.cad.BdCliente"%>
<%@page import="com.cad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente user = null;
    int i = -1;
    if(request.getParameter("i") != null){
        i = Integer.parseInt(request.getParameter("i"));
        user = BdCliente.getUsercliente().get(i);
        if(user == null){
            error = "Índice inválido!";
        }  
            if ( request.getParameter("edit") != null){
            String Nomecliente = request.getParameter("nome");
            String Emailcliente = request.getParameter("email");
            String Enderecocliente= request.getParameter("endereco");
            int Telefonecliente = Integer.parseInt( request.getParameter("telefone"));
            String Cpfcliente = request.getParameter("cpf");
            String Rgcliente = request.getParameter("rg");


            if (Nomecliente.isEmpty()) {
                error = "Nome do cliente invalido";
            }   else if ( Emailcliente.isEmpty()){
                error = "Email Invalido";
            }    else {
                        Cliente editUser = new Cliente();
                        editUser.setNomecliente(Nomecliente);
                        editUser.setCpfcliente(Cpfcliente);
                        editUser.setRgcliente(Rgcliente);
                        editUser.setEmailcliente(Emailcliente);
                        editUser.setTelefonecliente(Telefonecliente);
                        editUser.setEnderecocliente(Enderecocliente);
                        BdCliente.getUsercliente().set(i, editUser);
                        response.sendRedirect("cadastroscliente.jsp");
                        
                    } 
                }
           }

%>
<html>
    <div style="text-align: center">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Web:</title>
    </head>
    <body>
        <h1>Editar Cliente</h1>
        <%@include file="../WEB-INF/jspf/menucliente.jspf"%>
        <h3>Insira os dados novos</h3>
        

        
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>">
            Nome do cliente:<br/>
            <input type="text" name="nome" value="<%= user.getNomecliente()%>"/><br/>
            CPF:<br/>
            <input type="text" name="cpf" value="<%= user.getCpfcliente()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%= user.getRgcliente()%>"/><br/>
            E-mail:<br/>
            <input type="email" name="email" value="<%= user.getEmailcliente()%>"/><br/>
            Telefone:<br/>
            <input type="number" name="telefone" value="<%= user.getTelefonecliente() %>"/><br/>
            Endereco:<br/>
            <input type="text" name="endereco" value="<%= user.getEnderecocliente() %>"/><br/>
            
            
            <input type="submit" name="edit" value="Editar"/><br/>
            
            <%if(error!=null){%>
            <div style="color:red"><%=error%></div>
            <%}%>
            
        </form>
        
    </body>
    </div>
</html>
