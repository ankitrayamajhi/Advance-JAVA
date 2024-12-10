<!--
  Session
  -Time interval between login to logout
  -To maintain user state 
  -for security purpose
  
  setAttribute(String ,object)
  String = name , object = data
  getAttribute(String)
  invalidate() =To destroy Session
  SetMaxInactiveInterval(long)
  
  -->

<%
	String message = request.getParameter("message");
	if(message!=null) {
%>
<font color="red"><%= message %></font>
<%
	}
%>
<form method="post" action="Day-4-logincheck.jsp">
User Name:<input type="text" name="name"><br>
Password:<input type="password" name="password"><br>
<input type="submit" value="Login">
</form>