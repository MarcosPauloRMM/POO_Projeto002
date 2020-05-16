<%-- 
    Document   : editarfornecedor
    Created on : 11/05/2020, 19:24:03
    Author     : Alana
--%>

<%@page import="com.cad.BdFornecedor"%>
<%@page import="com.cad.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Fornecedor user = null;
    int i = -1;
    if(request.getParameter("i") != null){
        i = Integer.parseInt(request.getParameter("i"));
        user = BdFornecedor.getUserFornecedor().get(i);
        if(user == null){
            error = "Índice inválido!";
        }
    
    
           if ( request.getParameter("edit") != null){
            String Nomefornecedor = request.getParameter("nome");
            String Razaosocialfornecedor = request.getParameter("razaosocial");
            String Cnpjfornecedor= request.getParameter("cnpj");            
            String Emailfornecedor = request.getParameter("email");
            int Telefonefornecedor = Integer.parseInt( request.getParameter("telefone"));
            String Enderecofornecedor = request.getParameter("endereco");


            if (Nomefornecedor.isEmpty()) {
                error = "Nome do fornecedor invalido";
            }   else if ( Emailfornecedor.isEmpty()){
                error = "Email Invalido";
            }    else {
                        Fornecedor editUser = new Fornecedor();
                        editUser.setNomefornecedor(Nomefornecedor);
                        editUser.setRazaosocialfornecedor(Razaosocialfornecedor);
                        editUser.setCnpjfornecedor(Cnpjfornecedor);
                        editUser.setEmailfornecedor(Emailfornecedor);
                        editUser.setTelefonefornecedor(Telefonefornecedor);
                        editUser.setEnderecofornecedor(Enderecofornecedor);
                        BdFornecedor.getUserFornecedor().set(i, editUser);
                        response.sendRedirect("cadastrosfornecedor.jsp");
                        
                    } 
                   }
                  }

%>
<html>
    <div style="text-align: center; font-family: verdana;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar fornecedor</title>
    </head>
    <body>
        <h1>Editar fornecedor</h1>
        <h2><a href="cadastrosfornecedor.jsp">Lista de Fornecedores</a></h2>
        <h3>Insira os dados novos</h3>
        
        
        
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>">
            Nome do fornecedor<br/>
            <input type="text" name="nome" value="<%= user.getNomefornecedor()%>"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj" value="<%= user.getCnpjfornecedor() %>"/><br/>
            Razao Social:<br/>
            <input type="text" name="razaosocial" value="<%= user.getRazaosocialfornecedor() %>"/><br/>
            E-mail:<br/>
            <input type="email" name="email" value="<%= user.getEmailfornecedor()%>"/><br/>
            Telefone:<br/>
            <input type="number" name="telefone" value="<%= user.getTelefonefornecedor() %>"/><br/>
            Endereco:<br/>
            <input type="text" name="endereco" value="<%= user.getEnderecofornecedor() %>"/><br/>
            
            
            <input type="submit" name="edit" value="Editar"/><br/>
        </form>
        <%if(error!=null){%>
            <div style="color:red"><%=error%></div>
        <%}%>
    </body>
    </div>
            <footer>
            <%@include file="../WEB-INF/jspf/footer.jspf"%> 
        </footer>
</html>