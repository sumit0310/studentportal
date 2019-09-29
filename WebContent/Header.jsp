<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-compatible" content="IE-edge">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="studentportal.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
</head>
<body>


	<!-- logo and navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a href="HomePage.jsp" class="navbar-brand"> <!-- <i class="fa fa-image"></i> -->
			Online Student Portal
		</a>
		<button class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarbrand" aria-controls="navbarBrand"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarbrand">
			<ul class="navbar-nav">
				<li><a href="about.jsp" class="nav-link">About</a></li>
				<li><a href="HelpDesk.jsp" class="nav-link">Contact</a></li>
				<li><a href="#" class="nav-link">Courses</a></li>
			</ul>
			 <ul class="navbar-nav ml-auto">
				<li><a href="Registration.jsp" class="nav-link">Sign up</a></li>
				<li><a href="Login.jsp" class="nav-link">Login</a></li>
			</ul>
			<!-- <div class="col-sm-7 text-right loginbar">Amazing Shopping
					Experience</div> -->
			<%-- 	<%
					if (session.getAttribute("em") == null || session.getAttribute("em") == "") {
				%>
				<div class="col-sm-2 loginbar">
					<a href="signup.jsp"><span class="fa fa-user social_icons"></span>
						Sign Up</a> <a href="login.jsp"><span
						class="glyphicon glyphicon-log-in social_icons"></span> Login</a>
					<%
						} else {
					%>
					<div class="col-sm-2 text-right">
						<li class="dropdown" style="list-style: none;"><a href=""
							data-toggle="dropdown" class="dropdown-toggle usernm">Welcome<span
								class="glyphicon glyphicon-hand-right social_icons"></span><b><%=session.getAttribute("fnm")%></b></a>
							<ul class="dropdown-menu usernmsub">
								<li><a href="myorders.jsp">My Orders </a></li>
								<li><a href="myprofile.jsp">My Profile </a></li>
								<li><a href="changepassword.jsp">Change Password</a></li>
								<li><a href="logout.jsp">Logout</a></li>
							</ul></li>
						<%}%> --%>
					</div>
					<!-- end of column 7 -->
				</div>
		</div>
	</div>
	</nav>
</body>
</html>