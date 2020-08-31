<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data com scriptlet - JSP</title>
    </head>
    <body>
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Page</h1>
        <h2> Data/Hora do servidor com Scriptlet </h2>
        <div>
            <% for(int i=0;i<10;i++){ %>        
            <div><%= ((int)(Math.random()*100)) %></div>
            <%}%>
        </div>
    </body>
</html>
