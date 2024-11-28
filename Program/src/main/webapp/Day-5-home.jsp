<%
	String name=(String)session.getAttribute("NAME");
	if(null==name) {
		response.sendRedirect("login.jsp?message=invalid session");
	}
%>
<h1>Welcome to my page, <%= name %></h1>
<a href="Day-5-logout.jsp">Logout</a>