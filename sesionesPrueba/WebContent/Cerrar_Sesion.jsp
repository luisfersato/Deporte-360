<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page session="true"%>


    <%
    	HttpSession sesionCerrada = request.getSession();
    	sesionCerrada.invalidate();
    %>
    
    <jsp:forward page="Login.jsp"/>
