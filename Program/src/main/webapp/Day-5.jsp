
<%

// Retrieve cookies
Cookie[] cookies = request.getCookies();
String name = "";
String check = "";

// Check if the "REMEMBER" cookie is present
if (cookies != null) {
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("REMEMBER")) {
            String value = cookie.getValue();
            if (!value.equals("No")) {
                name = value;
                check = "checked";
            }
            break;
        }
    }
}
%>
<form method="post" action="Day-5-logincheck.jsp">
User Name:<input type="text" name="name" value="<%=name %>" ><br>
Password:<input type="password" name="password"><br>

Remember<input type="checkbox" name="remember" value="Ok">
<br>
<br>

</form>

