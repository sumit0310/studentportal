<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Changing Password</title>
</head>
<body>
	<%
		String cemail = request.getParameter("email");	
		String orgemail = (String)session.getAttribute("em");
		String cpass = request.getParameter("current");
		String npass = request.getParameter("new");
		String confirmpass = request.getParameter("confirm");
		String pass="";
				
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal","root","");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student where pass ='"+cpass+"' ");
			while(rs.next())
			{
				pass = rs.getString(9);
			}
			
			if(cemail.equals(orgemail))
			{
				if(pass.equals(cpass))
				{			
					if(npass.equals(confirmpass))		
					{	
						Statement stmt1 =con.createStatement();
						int i = stmt1.executeUpdate("update student set pass='"+npass+"' where emailid ='"+cemail+"'");
						%>
			     		<script type="text/javascript">
			     			alert("Password Updated Sucessfully....!!");
			     			window.location="ChangePassword.jsp";
			     		</script>
			    		<%	
						System.out.println("Password Updated Sucessfully....!!");
						stmt1.close();
						con.close();
					}
					else{%>
			     		<script type="text/javascript">
			     			alert("Error..! New Password and Confirm Password Not Match..!!");
			     			window.location="ChangePassword.jsp";
			     		</script>
			    	<%}	
				}	
					else{%>
		     		<script type="text/javascript">
	     			alert("Invalid Current Password..!!");
	     			window.location="ChangePassword.jsp";
	     		</script>
	    		<%}
				}
					else{%>
		     		<script type="text/javascript">
	     			alert("Invalid Email ID..!!");
	     			window.location="ChangePassword.jsp";
	     		</script>
	    		<%}			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
