<% 
String name = request.getParameter("name");
String password = request.getParameter("password");

if (name.equals("cosmos") && password.equals("cosmos")){
	session.setAttribute("NAME",name);
	response.sendRedirect("Day-4-result.jsp");

}
else{
	response.sendRedirect("Day-4.jsp?message = Invalid Login");
}
%>