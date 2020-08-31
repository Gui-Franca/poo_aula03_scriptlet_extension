<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int n = 0;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception ex){
        n=0;
        if(request.getParameter("n")!=null)
            erro = "Número inválido como parâmetro";
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data com scriptlet - JSP</title>
    </head>
    <body>
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Page</h1>
        <h2> Numeros Aleatórios Parametrizados </h2>
        <div>
            <form>
                Quantidade:
                <input type="number" name="n"/>
                <input type="submit" name="gerar"/>
            </form>
        </div>
        <br>
        <% if(erro == null && n ==0){ %>
            <div>Entre com um número</div>
        <% }else if(erro != null){ %>
            <div><%= erro %></div>
        <% }else{ %>
        <table border="1">
            <tr>
                <th>Seq</th>
                <th>Num</th>
            </tr>
            <% for(int i=1;i<=n;i++){ %>
            <tr>
                <th><%= i %></th>
                <th><%= ((int)(Math.random()*100)) %></th>
            </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
