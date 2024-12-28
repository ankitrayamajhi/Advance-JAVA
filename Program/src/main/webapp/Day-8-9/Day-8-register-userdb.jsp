<%@ page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
	PreparedStatement pre = con.prepareStatement("INSERT INTO `Day-8` (name, password, email) VALUES (?, ?, ?)");
	pre.setString(1,name);
	pre.setString(2,password);
	pre.setString(3,email);
	pre.execute();
	response.sendRedirect("Day-8-home.jsp");
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
