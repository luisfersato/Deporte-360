
<%@ page session="true"%>

  
<%
	String usuario ="";
	String clave ="";
	
	if(request.getParameter("usuario") != null)
		usuario = request.getParameter("usuario");
	
	if(request.getParameter("clave") != null)
		clave = request.getParameter("clave");
	
%>

<%
	if(usuario.equals("dany") && clave.equals("123")){
		HttpSession sesionIniciada = request.getSession();
		sesionIniciada.setAttribute("usuario", usuario);}
%>



