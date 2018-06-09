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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
      
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
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
<h2 style="text-align:center;">Product Insert form</h2>

<div class="container">
    <form action="insertdb.jsp" method="post">
    <table border="0" cellpadding="2" cellspacing="5">
      <thead>
         <tr>
             <th colspan="2">Purchase Product</th>
         </tr>
      </thead>
      <tbody>
         <tr>
             <td><label>Product Name</label></td>
             <td><input type="text" name="name"/></td>
             
         </tr>
         <tr>
             <td><label>Quantity</label></td>
             <td><input type="text" name="qty"/></td>
             
         </tr>
         <tr>
             <td><input type="submit" value="save"?></td>
             <td><input type="submit" value="reset"?></td>
             
         </tr>
      </tbody>
    
    </table>
    </form>
    </div>
    <font color="red"> 
    <c:if test="${not empty param.errmsg }">
       <c:out value="${param.errmsg }"/>
       <a href="index.jsp">Go back</a>
    </c:if>
    </font>
    <font color="red"> 
    <c:if test="${not empty param.susmsg }">
       <c:out value="${param.susmsg }"/>
       <a href="index.jsp">Go back</a>
    </c:if>
    </font>
</body>
</html>