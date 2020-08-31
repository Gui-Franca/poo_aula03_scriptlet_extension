<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
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
            <%
                Calendar cal = GregorianCalendar.getInstance();
                int anoAtual = cal.get(Calendar.YEAR);
                int mesAtual = cal.get(Calendar.MONTH);
                int mesNasc = 12;
                int idade;
                if(mesNasc == mesAtual){
                    idade = (anoAtual - 2001);
                }else{
                    idade = (anoAtual - 2001)-1;
                }
            %>
            <h3>Meu nome: <u>Guilherme Campreguer França</u></h3>
            <h3>Minha idade: <u><%= idade %> anos</u></h3>
            <h3>
        </div>
    </body>
</html>
