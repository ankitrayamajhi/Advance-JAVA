<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String rem=request.getParameter("remember");
	if(rem!=null) {
		String n=request.getParameter("name");
		Cookie c=new Cookie("REMEMBER",n);
		response.addCookie(c);
	} else {
		Cookie c=new Cookie("REMEMBER","NO");
		response.addCookie(c);
	}
	if(name.equals("cosmos") && password.equals("cosmos")) {
		session.setAttribute("NAME", name);
		response.sendRedirect("Day-6-home.jsp");
	} else{
		response.sendRedirect("Day-6-login.jsp?message=Invalid Login");
	}
%>