<% 
String name = (String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("Day-4.jsp?message=invalid session");
}
%>
<h1>Welcome to my page <%= name %></h1>
<a href="Day-4-logout.jsp"> Logout</a>