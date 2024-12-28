<%@ page import="java.sql.*" %>
<%
	String id=request.getParameter("id");
	String email="";
	String name="";
	try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
			PreparedStatement pre=con.prepareStatement("select * from `Day-8` where id=?");
			pre.setString(1,id);
			ResultSet rs=pre.executeQuery();
			if(rs.next()){
				name=rs.getString("NAME");
				email=rs.getString("EMAIL");
			}
			pre.close();
	} catch(Exception e) {
			e.printStackTrace();
	}

%>
<form method="post" action="Day-9-edituserdb.jsp">
Name:<input type="text" name="name" value="<%=name%>"><br>
Email:<input type="text" name="email" value="<%=email%>"><br>
<input type="hidden" name="id" value="<%=id %>"> 
<input type="submit" value="Edit">
</form>
