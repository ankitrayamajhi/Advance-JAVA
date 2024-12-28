
<%@ page errorPage="Day-8-error.jsp" %>
<%
	String name=(String)session.getAttribute("NAME");
	if(null==name) {
		response.sendRedirect("Day-8-login.jsp?message=invalid session");
	}
%>
<h1>Welcome to my site!</h1>