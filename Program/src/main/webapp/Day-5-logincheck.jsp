<%
String rem = request.getParameter("remember");
if (rem != null) {
    // "Remember Me" is checked
    String n = request.getParameter("name");
    Cookie c = new Cookie("REMEMBER", n);
    response.addCookie(c);
} else {
    // "Remember Me" is NOT checked
    Cookie c = new Cookie("REMEMBER", "NO");
    response.addCookie(c);
}
%>
