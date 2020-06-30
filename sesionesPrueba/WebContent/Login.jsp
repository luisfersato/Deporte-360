<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<%@page session="true" import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b>Identificacion</b>
<p>

<%
	if(request.getParameter("error")!= null){
		out.println(request.getParameter("error"));
	}
%>

<form action="Registro.jsp" method="post">

	<br>
	Usuario:<input type="text" name="usuario"/>
	<br>
	clave: <input type="password" name="clave"/>
	<br>
	<input type="submit" value="iniciar sesion">
	<br>
	
</form>

</body>
</html>