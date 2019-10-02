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
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Queries</title>
</head>
<body>
<%@ include file="Header.jsp"%>
	<%if(session.getAttribute("admin") == null)
	{%>
			<script type="text/javascript">
				alert("Access Denied..! You Cant Access Without Login");
				window.location="AdminLogin.jsp";
			</script>
		
	<%}%>
	<div class="container" style="padding: 70px;">
	<h4><b>Welcome:&nbsp <%=session.getAttribute("admin")%></b></h4>
	<h4><b><a href="AdminLogout.jsp">Logout</a></b></h4>
	</div> 
	<div class="container text-center" style="background: #f6f3f2; padding: 35px; font-size: large;">
	<h2>Manage Queries</h2><br>
	<form name="query">
	<table border="2" width="100%" align="center">
	 <tr style="text-align: center;">
			    <th>Q_ID</th>
			    <th>Customer Name</th> 
			    <th>Customer Email</th>
			    <th>Query Subject</th>
			    <th>Message</th>
			    <th>Receiving Time</th>
			    <th>Action</th>
		</tr>
 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal","root",""); 
		Statement stmt =  con.createStatement();
		String sql = "select * from studentquery";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){%> 
		<tr>
		 
				<td><%=rs.getString("q_id") %></td>
				<td><%=rs.getString("s_name") %></td>	
				<td><%=rs.getString("s_email") %></td>	
				<td><%=rs.getString("q_subject") %></td>	
				<td><%=rs.getString("message") %></td>	
				<td><%=rs.getString("createtime") %></td>	
				<td><a href="DeleteQuery.jsp?dquery=<%=rs.getString("q_id")%>">Delete</a></td>
				
		</tr>
		<%}%>
		</table>
	</form>
	<%}catch(Exception e){
		e.printStackTrace();
	}		
 %>
	 	 	 
	</div>
	
</body>
</html>