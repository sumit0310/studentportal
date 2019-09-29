<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-compatible" content="IE-edge">
<meta name="viewport" content="width=device-width">
<title>My Profile</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ include file="Header.jsp"%>

	<%if(session.getAttribute("em") == null)
	{%>
	<script type="text/javascript">
 				alert("Access Denied..! You Cant Access Without Login");
 				window.location="Login.jsp";
 			</script> 

	<%}%>

	<%
	String cemail = (String)session.getAttribute("em");//session email converting into string to cemail variable
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal","root","");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from student where emailid = '"+cemail+"' ");
%>
	<div class="container text-center"
		style="background: #f6f3f2; padding: 70px;">
		<div class="col-sm-12">
			<h2>My Profile</h2>
			<br>
			<table border="2" bordercolor="#CCCCCC" align="center"
				style="width: 60%; background: #ffe9e3;">
				<% while(rs.next())
					{%>
				<tr>
					<th><h3>&nbspStudent ID :</h3></th>
					<td><h3><%=rs.getString("student_id") %></h3></td>
				</tr>
				
				<tr>
					<th><h3>&nbspFirst Name :</h3></th>
					<td><h3><%=rs.getString("firstname") %></h3></td>
				</tr>

				<tr>
					<th><h3>&nbspLast Name :</h3></th>
					<td><h3><%=rs.getString("lastname") %></h3></td>
				</tr>
				
				<tr>
					<th><h3>&nbspAddress :</h3></th>
					<td><h3><%=rs.getString("address") %></h3></td>
				</tr>
				

				<tr>
					<th><h3>&nbspEmail :</h3></th>
					<td><h3><%=rs.getString("emailid") %></h3></td>
				</tr>

				<tr>
					<th><h3>&nbspD.O.B :</h3></th>
					<td><h3><%=rs.getString("dob") %></h3></td>
				</tr>

				<tr>
					<th><h3>&nbspPhone No :</h3></th>
					<td><h3><%=rs.getString("phone_no") %></h3></td>
				</tr>

				<tr>
					<th><h3>&nbspPassword :</h3></th>
					<td><h3><%=rs.getString("course") %></h3></td>
				</tr>
				<%} %>
			</table>
		</div>
	</div>
	<%
 	}catch(Exception e){
 	e.printStackTrace();
} %>
	<%@ include file="Footer.jsp"%>
	<script type="text/javascript" src="javascript/jquery.js"></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
</body>
</html>