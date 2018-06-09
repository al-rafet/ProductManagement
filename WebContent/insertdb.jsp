<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JINSERT Operation</title>
</head>
<body>
<c:if test="${empty param.name or empty param.qty }">

<c:redirect url="insert.jsp">
    <c:param name="errmsg" value="Please enter Product and Quantity"></c:param>
    </c:redirect>
 
</c:if>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/loginjdbc"
                    user="root" password=""/>
<sql:update dataSource="${dbsource}" var="result">
     INSERT INTO product(Product_name ,Quantity) VALUES(?,?);
     <sql:param value="${param.name}"/>
     <sql:param value="${param.qty }"/>    

</sql:update>                    
<c:if test="${result>=1 }">
  <font size="5" color="green">data inserted successfully</font>
  <c:redirect url="insert.jsp">
  <c:param name="susmsg" value="data inserted successfully"/>
  </c:redirect>
</c:if>
</body>
        

</html>