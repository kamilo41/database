<%-- 
    Document   : index
    Created on : 4/03/2016, 11:57:03 AM
    Author     : KAMILO
--%>

<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title></title>
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
        <sql:query var="result" dataSource="${connection}">
        SELECT  name  FROM accounts where number <= 9
        </sql:query>
        
        <select name="tab">
            
        <c:forEach var="value" items="${result.rows}">
      <option>${value.name}</option>
             </c:forEach>
        </select>
        <br><br>
         
     <input type="submit" value="SEND ACCOUNTS"/>
         </form>  
         
         </body>
</html>
