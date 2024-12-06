<% 
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String time = request.getParameter("time");
String address = request.getParameter("address");
String course[] = request.getParameterValues("course");
%>
Name: <%= name%>
<br>
Gender:<%= gender%>
<br>
Time: <%= time%>
<br>
Address:<%= address%>  
<br>
<br>
<h2> Course:</h2>
<ul>

<% 
for(String c:course){
%> 
<li><%=c %>
<%
}
%>
</ul>