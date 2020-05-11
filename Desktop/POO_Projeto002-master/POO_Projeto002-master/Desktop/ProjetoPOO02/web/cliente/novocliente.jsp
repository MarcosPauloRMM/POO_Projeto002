<%-- 
    Document   : novocliente
    Created on : 11/05/2020, 15:35:22
    Author     : User
--%>

<%@page import="com.cad.BdCliente"%>
<%@page import="com.cad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") !=  null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        int telefone = Integer.parseInt(request.getParameter("telefone"));
        String endereco = request.getParameter("endereco");
                
        if(nome.isEmpty()){
            error = "Nome Inválido";
        }
        if(cpf.isEmpty()){
            error = "Nome Inválido";
        }
        if(rg.isEmpty()){
            error = "Nome Inválido";
        }
        if(email.isEmpty()){
            error = "Nome Inválido";
        }
        if(endereco.isEmpty()){
            error = "Nome Inválido";
        }else{
                Cliente user = new Cliente();
                user.setNomecliente(nome);
                user.setCpf(cpf);
                user.setRg(rg);
                user.setEmailcliente(email);
                user.setTelefonecliente(telefone);
                user.setEnderecocliente(endereco); 
                
                BdCliente.getUsercliente().add(user);
                response.sendRedirect("cadastroscliente.jsp");
            }
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - Cadastro de Usuarios</title>
    </head>
    <body>
        <h1>Cadastro de Usuarios:</h1>
        <h2>Novo Cadastro:</h2>
        <li><a href="cadastroscliente.jsp">Lista de Usuário</a><br/><br/></li>
        
        <%if(error!=null){%>
            <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome do usuário:<br/>
            <input type="text" name="nome"/><br/>
            Razão Social:<br/>
            <input type="text" name="nome"/><br/>
            CNPJ:<br/>
            <input type="number" name="email"/><br/>
            E-mail:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="number" name="email"/><br/>
            Endereço:<br/>
            <input type="text" name="email"/><br/><br/>
            <input type="submit" name="add" value="Adicionar"/><br/>
        </form>
    </body>
</html>
