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
        <title>Tabuada parametrizada - JSP</title>
    </head>
    <body>
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Page</h1>
        <h2> Tabuada Parametrizada </h2>
        <div>
            <form>
                Tabuada:
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
                <th>Tab</th>
                <th>Res</th>
            </tr>
            <% 
                int x = 0,res = 0;
                for(int i=1;i<=10;i++){
                x++;
                
                res = n*x;
            %>
            <tr>
                <th><%= i %> X <%= x %></th>
                <th><%= res %></th>
            </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
