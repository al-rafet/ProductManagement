<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;
      
}
td,th{

text-align:center;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 2px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
   
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    
}
</style>
</head>
<body>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/loginjdbc"
                    user="root" password=""/>
          
    <sql:query dataSource="${dbsource}" var="result">
    SELECT * from product where id=?;
     <sql:param value="${param.id}"/>   
    </sql:query> 
    
   
    <div class="container">
        <form action="deletedb.jsp" method="post">
          <table id="customers">
          
          <caption style="color:red">Update List</caption>
          <tr>
             <th style="text-align:center;">Product Name</th>
             <th style="text-align:center;">Quantity</th>    
               
          </tr>
          <c:forEach var="row" items="${result.rows }">
              <tr>
                  <td><input type="hidden" value="${param.id}" name="id"/></td>
                  <td><input type="text" value="${row.Product_name}" name="name"/></td>
                  <td><input type="text" value="${row.quantity}" name="qty"/></td>
                  <td> <input type="submit" value="Delete"/></td>
              </tr>
                
          </c:forEach>
          
          </table>
        
        <a href="index.jsp">Go Home</a>
        
        </form>
        
    </div>
              
</body>
</html>