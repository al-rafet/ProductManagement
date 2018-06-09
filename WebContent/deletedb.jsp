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
</head>
<body>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/loginjdbc"
                    user="root" password=""/>
          
    <sql:update dataSource="${dbsource}" var="count">
    DELETE from product
    where id=?;
    
     <sql:param value="${param.id}"/>   
    </sql:update> 
    <c:if test="${count>=1 }">
       <font size="5" color="green">Congratulations !! Data deleted successfully....</font>
      <a href="display.jsp">Go Back</a>
    </c:if>
</body>
</html>