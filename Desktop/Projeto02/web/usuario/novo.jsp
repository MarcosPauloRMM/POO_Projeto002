<%-- 
    Document   : novo
    Created on : 06/05/2020, 20:36:00
    Author     : Marcos Paulo da Rocha Moura Miúdo
--%>

<%@page import="com.cad.Bd"%>
<%@page import="com.cad.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") !=  null)
    {
        String name = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha1 = request.getParameter("senha1");
        String senha2 = request.getParameter("senha2");
        if(name.isEmpty()){
            error = "Nome Inválido";
        }
        else if(email.isEmpty()){
            error = "E-mail Inválido";
        }
        else if(senha1.isEmpty()){
            error = "Senha Inválido";
        }else{
            if(senha1.equals(senha2)){
                Usuario user = new Usuario();
                user.setNome(name);
                user.setEmail(email);
                user.setSenha(senha1);
                Bd.getUsers().add(user);
                response.sendRedirect("cadastros.jsp");
            }else{
                error = "Senhas Diferentes";
            }
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
        <li><a href="cadastros.jsp">Lista de Usuário</a><br/><br/></li>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome do usuário:<br/>
            <input type="text" name="nome"/><br/>
            E-mail:<br/>
            <input type="email" name="email"/><br/>
            <fieldset>
                <legend>Senha</legend>
                Senha:<br/>
                <input type="password" name="senha1"/><br/>
                Confirmação de senha:<br/>
                <input type="password" name="senha2"/><br/>
            </fieldset><br/>
            <input type="submit" name="add" value="Adicionar"/><br/>
        </form>
    </body>
</html>
