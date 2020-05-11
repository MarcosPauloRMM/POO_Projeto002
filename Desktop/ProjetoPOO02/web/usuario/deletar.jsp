<%-- 
    Document   : deletar
    Created on : 06/05/2020, 19:36:20
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
    if(request.getParameter ("i")!=null){
        i = Integer.parseInt(request.getParameter("i"));
        user = Bd.getUsers().get(i);  
    }
    if (request.getParameter("remove")!=null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        Usuario editUser = new Usuario();
        editUser.setEmail(email);
        editUser.setNome(nome);
        Bd.getUsers().remove(i);
        response.sendRedirect("cadastros.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - Cadastro de Usuarios</title>
    </head>
    <body>
        <h1>Cadastro de Usuarios:</h1>
        <h2>Excluir mesmo o usuario abaixo?</h2>
    <li><a href="cadastros.jsp">Usuário</a></li><br/>
    <hr>
    <%if(error!=null){%>
        <div style="color:red"></div>
        <%}else{%>
            <form method="post">
                <input type="hidden" name="i" value="<%=i%>"/>
                Nome do usuario:<br/>
                <b><%=user.getNome()%></b><br/>
                E-mail:<br/>
                <b><%=user.getEmail()%></b><br/>
                <br/><br/>
                <input type=submit name="remove" value="Excluir"/><br/>
            </form>
        <%}%>
    </body>
</html>
