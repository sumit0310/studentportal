<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String em = request.getParameter("emaild");
		String pass = request.getParameter("pswd");
	 	try{
	 		Class.forName("com.mysql.jdbc.Driver");
	 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal","root","");
	 		String sql = "select emailid,pass from admin where emailid=? and pass=? ";
	 		PreparedStatement ps = con.prepareStatement(sql);
	 		ps.setString(1, em);
	 		ps.setString(2, pass);
	 		ResultSet rs = ps.executeQuery();
	 		if(rs.next())
	 		{
	 				 session.setAttribute("admin", em);
	 				 response.sendRedirect("AdminArea.jsp");
	 		}
	 		else{%>
					<script type="text/javascript">
		     			alert("Access Denied..!");
		     			window.location="AdminLogin.jsp";
		     		</script>
				 
			 <%}
			}catch(Exception e){
	 		e.printStackTrace();
	 	}
		
	%>

</body>
</html>