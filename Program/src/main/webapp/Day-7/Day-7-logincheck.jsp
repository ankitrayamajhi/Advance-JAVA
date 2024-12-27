<%@ page import="java.sql.*" %>
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
	boolean isValid=false;
	try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
PreparedStatement pre=con.prepareStatement("select * from user where name=? and password=?");
ResultSet rs=pre.executeQuery();
isValid=rs.next();
rs.close();
pre.close();
	} catch(Exception e) {
			e.printStackTrace();
		}
	if(isValid) {
		session.setAttribute("NAME", name);
		response.sendRedirect("Day-7-home.jsp");
	} else{
		response.sendRedirect("Day-7-login.jsp?message=Invalid Login");
	}
%>