<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-compatible" content="IE-edge">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%if(session.getAttribute("admin") == null)
	{%>
<script type="text/javascript">
				alert("Access Denied..! You Cant Access Without Login");
				window.location="AdminLogin.jsp";
			</script>

<%}%>
<div class="container">
	<h4>
		<b>Welcome:&nbsp <%=session.getAttribute("admin")%></b>
	</h4>
	<h4>
		<b><a href="AdminLogout.jsp"
			style="float: right; margin-top: -28px;">Logout</a></b>
	</h4>
</div>
<div class="container text-center"
	style="background: #f6f3f2; padding: 35px;">
	<h2>Admin Area *Confidential*</h2>
	<br> <img alt="" src="images\AA.jpg">
</div>
<div class="container text-center" style="padding-top: 50px;">
<div class="row">
	<a href="ManageStudents.jsp"><div class="col-sm-3">
			<h2>
				<b>Manage Students</b>
			</h2>
		</div></a> <a href="ManageStudent.jsp"><div class="col-sm-3">
			<h2>
				<b>Manage Student</b>
			</h2>
		</div></a> <a href="Registration.jsp"><div class="col-sm-3">
			<h2>
				<b>Register Student</b>
			</h2>
		</div></a> <a href="ManageQueries.jsp"><div class="col-sm-3">
			<h2>
				<b>Manage Queries</b>
			</h2>
		</div></a>
</div>

</div>
</body>
</html>