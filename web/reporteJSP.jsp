<%-- 
    Document   : reporteJSP
    Created on : 07-mar-2020, 19:21:58
    Author     : estel
--%>
<%@page import="utilerias.Conversiones, java.util.Date" %>

<%@page contentType="application/vnd.ms-excel" %>
<%
    String nombreArchivo="reporte.xls";
    response.setHeader("Content-Disposition","inline; filename="+nombreArchivo);
    %>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte de Excel</title>
    </head>
    <body>
        <h1>Reporte de Excel</h1>
        <br>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripción</th>
                <th>Fecha Inicio</th>
            </tr>
            <tr>
                <td>1.Fundamentos de Java</td>
                <td>Aprenderemos la sintaxis básica de Java</td>
                <td><%=Conversiones.format(new Date())%></td>
            </tr>
            <tr>
                <td>2.Programación en Java</td>
                <td>Pondremos en práctica conceptos de la programación Orientada a Objetos</td>
                <td><%= Conversiones.format(new Date())%></td>
            </tr>
            <tr>
                <td>3.Programación web</td>
                <td>Realizaremos una introducción a la programación web</td>
                <td><%=Conversiones.format(new Date())%></td>
            </tr>

        </table>
    </body>
</html>
