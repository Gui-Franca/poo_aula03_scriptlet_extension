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
            <% Date agora = new Date();%>
            <h3>Agora no servidor: <u><%= agora%></u></h3>
            <h3>Agora no servidor em ms: <u><%= agora.getTime()%>ms</u></h3>
        </div>
    </body>
</html>
