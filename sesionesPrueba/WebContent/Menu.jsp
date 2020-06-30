<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@page import="java.util.Date" %>

<%
	String usuario ="";
	HttpSession sesionIntento = request.getSession();
	if(sesionIntento.getAttribute("usuario") == null){
%>

<jsp:forward page="Login.jsp">
<jsp:param name="error" value="Identificacion obligatoria"/>
</jsp:forward>

<%
	}else{
		
		usuario = (String)sesionIntento.getAttribute("usuario");
	}
	
	
	%>
	
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<b> Datos de Sesion:</b>
	
	<%
		Date acceso = new Date(session.getLastAccessedTime());
		out.println("Ultimo acceso: "+acceso+"<br>");
	%>
	
	<b>Menu de Administracion</b>
	<b>Usuario activo:</b> <%=usuario %><p>
	<li> <a href="opc1.jsp"> Crear nuevo usuario</a>
	<li> <a href="opc2.jsp"> Borrar usuario</a>
	<li> <a href="opc3.jsp"> Cambiar clave</a>
	
	<p>
	
	<li><a href="Cerrar_Sesion.jsp">Cerrar Sesion</a>
	
	
</body>
</html>