<%-- 
    Document   : result
    Created on : 12/02/2016, 09:18:38 AM
    Author     : kamilo
--%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="scoresData" scope="request" class="com.iucesmag.model.ScoresData" />
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="css/estilo.css" rel="stylesheet">
     
    </head>
    <body>
         <form action="ControllerServlet" method="POST"> 
        
        <h1>INFORMATION PUC</h1>
         
          <sql:setDataSource  
            var="connection"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/contabilidad"
            user="root"  password=""
            />
        
        <c:choose>
            <c:when test="${scores.Data.values == 'Activo' }">
               <sql:query var="result" dataSource="${connection}">
               SELECT number,name FROM accounts where number like '1%'
        </sql:query>
        <table border="1">
         <c:forEach var="value" items="${result.rows}">
                          <tr>
                                <td>${value.name}</td>
                                <td>${value.number}</td>
                          </tr>
                    </table>

                    
                    
                </c:forEach>
            
            
            
            </c:when>
            <c:when test="">
            
            
            </c:when>
            <c:when test="">
            
            
            
            
            </c:when>
            <c:when test="">
            
            
            
            
            </c:when>
            
            <c:when test="">
            
            
            
            
            </c:when>
            <c:when test="">
            </c:when>
            <c:when test="">
            </c:when>
            <c:when test="">
            </c:when>
            <c:when test="">
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>

         
         
         
         
         
         
         
         
         
         
         
         
         </form>
    
         </body>
</html>
