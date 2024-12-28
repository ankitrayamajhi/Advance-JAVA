<%@ page import="java.sql.*" %>
<%
	String id=request.getParameter("id");
	try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
			PreparedStatement pre=con.prepareStatement("delete from `Day-8` where id=?");
			pre.setInt(1,Integer.parseInt(id));
			pre.execute();
			pre.close();
			response.sendRedirect("Day-8-view-user.jsp");
	} catch(Exception e) {
			e.printStackTrace();
	}

%>
