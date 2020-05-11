<%-- 
    Document   : editar
    Created on : 06/05/2020, 20:36:20
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.Bd"%>
<%@page import="com.cad.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Usuario user = null;
    int i = -1;
    if(request.getParameter("i") != null){
        i = Integer.parseInt(request.getParameter("i"));
        user = Bd.getUsers().get(i);
        if(user == null){
            error = "Índice inválido!";
        }
    }
    if ( request.getParameter("edit") != null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha1 = request.getParameter("senha1");
        String senha2 = request.getParameter("senha2");
        if (nome.isEmpty()) {
            error = "Nome do usuario invalido";
        }else if ( email.isEmpty()){
            error = "Email Invalido";
        }else if (senha1.isEmpty()){
            error = "senha invalida";
        }else{
            if (senha1.equals(senha2)){
                Usuario editUser = new Usuario();
                editUser.setEmail(email);
                editUser.setNome(nome);
                editUser.setSenha(senha1);
                Bd.getUsers().set(i, editUser);
                response.sendRedirect("cadastros.jsp");
            } else {
                error = "Senhas não confere";
            }
        } 
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar - Cadastro de Usuarios</title>
    </head>
    <body>
        <h1>Cadastro de Usuarios:</h1>
        <h2>Editar:</h2>
        <li><a href="cadastros.jsp">Usuários</a><br/><br/></li>
        <hr>
        <% if (error != null ){ %>
         <div style="color: red"><%= error %> </div>       
        <% } else { %>
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>">
            Nome do usuário:<br/>
            <input type="text" name="nome" value="<%=user.getNome()%>"/><br/>
            E-mail:<br/>
            <input type="email" name="email" value="<%=user.getEmail()%>"/><br/>
            <fieldset>
                <legend>Senha</legend>
                Senha:<br/>
                <input type="password" name="senha1" value="<%=user.getSenha() %>"/><br/>
                Confirmação de senha:<br/>
                <input type="password" name="senha2" value="<%=user.getSenha() %>"/><br/>
            </fieldset><br/>
            <input type="submit" name="edit" value="Editar"/><br/>
        </form>
        <%}%>
    </body>
</html>
