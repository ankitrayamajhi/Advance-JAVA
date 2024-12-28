<head>
<script>
function validate() {
	console.log('called...');
	name=document.getElementById('name').value;
	if(name.length==0) {
		alert("Please enter name!");
		return false;
	} else {
		return true;
	}
}
</script>
</head>
<h1>Register User</h1>
<form method="post" action="Day-8-register-userdb.jsp" onsubmit='validate()'>
Name:<input type="text" name="name" id="name"><br>
Password:<input type="password" name="password"><br>
Email:<input type="text" name="email"><br>
<input type="submit" value="Register">
</form>
