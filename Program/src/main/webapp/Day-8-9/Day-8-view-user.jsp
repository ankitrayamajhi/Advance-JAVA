<%@ page import="java.sql.*" %>
<head>
<script>
function cofirmDel(id) {
	if(confirm("Are You Sure?")){
		location.href='Day-8-deleteuser.jsp?id='+id;
	}
}
function test() {
	alert("hello");
}
</script>
</head>
<body>
<h1>View User</h1>
<table>
<tr><th>Name</th><th>Email</th><th>Action</th></tr>
<%
	try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
PreparedStatement pre=con.prepareStatement("select * from `Day-8`");
ResultSet rs=pre.executeQuery();
while(rs.next()) {
%>
	<tr><td><%=rs.getString("NAME") %></td><td><%=rs.getString("EMAIL") %></td>
	<td><a href="Day-8-edituser.jsp?id=<%=rs.getString("ID") %>">Edit</a>
		|
		<a href="#" onclick="cofirmDel(<%=rs.getString("ID") %>)">Delete</a>
	</td>
	</tr>
<%	
	
}
rs.close();
pre.close();
	} catch(Exception e) {
			e.printStackTrace();
		}

%>
</table>
</body>