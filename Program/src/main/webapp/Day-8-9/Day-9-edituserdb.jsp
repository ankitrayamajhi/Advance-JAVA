<%@ page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String email=request.getParameter("email");
	try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
	PreparedStatement pre=
			con.prepareStatement("update `Day-8` set name=?,email=? where id=?");
	pre.setString(1,name);
	pre.setString(2,email);
	pre.setString(3,id);
	pre.execute();
	response.sendRedirect("Day-8-home.jsp");
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
