<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data com expression - JSP</title>
    </head>
    <body>
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Page</h1>
        <h2> Data/Hora do servidor com Expression </h2>
        <div>
            <h3>Agora no servidor: <u><%= new Date()%></u></h3>
        </div>
    </body>
</html>
