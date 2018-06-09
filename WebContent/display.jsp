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
       <script>
           function confirmgo(m,u){
        	   if(confirm(m)){
        		   window.location=u;
        	   }
           }
       </script>
       <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
#customers caption {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    color:red;
    
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: cemter;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/loginjdbc"
                    user="root" password=""/>
          
    <sql:query dataSource="${dbsource}" var="result">
    SELECT * from product;   
    </sql:query>    
    <center>
        <form>
          <table id="customers">
          
         <caption style="color:red;font-size:20px;">Product List</caption> 
          <tr>
             <th>Product ID</th>
             <th>Product Name</th>
             <th>Quantity</th>    
             <th colspan="2">Action</th>    
          </tr>
          <c:forEach var="row" items="${result.rows }">
              <tr>
                  <td><c:out value="${row.id}"></c:out></td>
                  <td><c:out value="${row.product_name}"></c:out></td>
                  <td><c:out value="${row.Quantity}"></c:out></td>
                  <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update </a>  </td>
                  
                  <td><a href="delete.jsp?id=<c:out value="${row.id}"/>">Delete </a>  </td>
              </tr>
          
          </c:forEach>
          
          </table>
        
        
        
        </form>
    <a href="index.jsp">Go Home</a>
    </center>            
</body>
</html>