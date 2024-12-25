
<%@ page errorPage="Day-6-error.jsp" %>
<%
	String name=(String)session.getAttribute("NAME");
	if(null==name) {
		response.sendRedirect("Day-6-login.jsp?message=invalid session");
	}
%>
<h1>Welcome to my site!</h1>