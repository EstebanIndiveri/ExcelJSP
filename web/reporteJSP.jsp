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
                <th>Descripci�n</th>
                <th>Fecha Inicio</th>
            </tr>
            <tr>
                <td>1.Fundamentos de Java</td>
                <td>Aprenderemos la sintaxis b�sica de Java</td>
                <td><%=Conversiones.format(new Date())%></td>
            </tr>
            <tr>
                <td>2.Programaci�n en Java</td>
                <td>Pondremos en pr�ctica conceptos de la programaci�n Orientada a Objetos</td>
                <td><%= Conversiones.format(new Date())%></td>
            </tr>
            <tr>
                <td>3.Programaci�n web</td>
                <td>Realizaremos una introducci�n a la programaci�n web</td>
                <td><%=Conversiones.format(new Date())%></td>
            </tr>

        </table>
    </body>
</html>
