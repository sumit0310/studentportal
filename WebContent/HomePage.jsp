<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student portal</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/studentportal.css">
</head>
<body>
	<!-- <h1>Student Portal</h1> -->
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
					<%
						if (session.getAttribute("em") == null || session.getAttribute("em") == "") {
					%>
					<li><a href="Registration.jsp" class="nav-link">Sign up</a></li>
					<li><a href="Login.jsp" class="nav-link">Login</a></li>
					<%
						} else {
					%>
					<div class="col-sm-2 text-right">
						<li class="dropdown" style="list-style: none;"><a href=""
							data-toggle="dropdown" class="dropdown-toggle usernm">Welcome<span
								class="glyphicon glyphicon-hand-right social_icons"></span><b><%=session.getAttribute("fnm")%></b></a>
							<ul class="dropdown-menu usernmsub">
								<li><a href="MyProfile.jsp">My Profile </a></li>
								<li><a href="ChangePassword.jsp">Change Password</a></li>
								<li><a href="Logout.jsp">Logout</a></li>
							</ul></li>
						<%
							}
						%>
					</div>
				</ul>
			</div>
		</div>
	</nav>

	<section class="container-fluid px-0">
		<div class="row align-items-center">
			<div class="col-lg-6">
				<div id="headingGroup"
					class="text-center text-white d-none d-lg-block mt-5">
					<h1>"NO MATTER HOW HARD THE PAST, YOU CAN ALWAYS BEGIN AGAIN."</h1>
				</div>
			</div>
			<div class="col-lg-6 mt-5 px-0">
				<img class="img-fluid"
					src="images/brooke-cagle-g1Kr4Ozfoac-unsplash.jpg" alt="">
			</div>
		</div>
	</section>

	<section class="container-fluid px-0">
		<div class="row align-items-center content">
			<div class="col-md-6 order-2 order-md-1">
				<img class="img-fluid"
					src="images/annie-spratt-QckxruozjRg-unsplash.jpg" alt="">
			</div>
			<div class="col-md-6 text-center order-1 order-md-2">
				<div class="row justify-content-center">
					<div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
						<h2>A FAMILY OF LEARNING</h2>
						<!-- <img src="lollipop (4).png" alt="" class="d-none d-lg-inline"> -->
						<i class="fa fa-graduation-cap"></i>
						<p class="lead">ONE SMALL POSITIVE THOUGHT IN THE MORNING CAN
							CHANGE YOUR WHOLE DAY.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row align-items-center content">
			<div class="col-md-6 text-center">
				<div class="row justify-content-center">
					<div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
						<h2>A GREAT PLACE FOR EDUCATION</h2>
						<!-- <img src="lollipop (4).png" alt="" class="d-none d-lg-inline"> -->
						<i class="fa fa-graduation-cap"></i>
						<p class="lead">"IF YOU CANNOT DO GREAT THINGS, DO SMALL
							THINGS IN A GREAT WAY."</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 px-0">
				<img class="img-fluid"
					src="images/jaime-lopes-0RDBOAdnbWM-unsplash.jpg" alt="">
			</div>
		</div>
		<div class="row align-items-center content">
			<div class="col-md-6 order-2 order-md-1">
				<img class="img-fluid"
					src="images/priscilla-du-preez-XkKCui44iM0-unsplash.jpg" alt="">
			</div>
			<div class="col-md-6 text-center order-1 order-md-2">
				<div class="row justify-content-center">
					<div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
						<h2>A PARTNERSHIP IN DISCOVERY</h2>
						<!-- <img src="lollipop (4).png" alt="" class="d-none d-lg-inline"> -->
						<i class="fa fa-graduation-cap"></i>
						<p class="lead">"TALENT WINS GAMES,BUT TEAMWORK AND
							INTELLIGENCE WIN CHAMPIONSHIPS."</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="Footer.jsp"%>


	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>