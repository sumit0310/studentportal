<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>
</head>
<body>
	<%
		String email = request.getParameter("lemail");
		String pwd = request.getParameter("lpswd");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal","root","");
			PreparedStatement pst = con.prepareStatement("Select emailid,pass,firstname from student where emailid=? and pass=?");
		  	pst.setString(1, email);
		    pst.setString(2, pwd);
		    ResultSet rs = pst.executeQuery();
		    if(rs.next())        
		    {
		    	session.setAttribute("fnm", rs.getString("firstname"));//1st Session for name
		    	session.setAttribute("em", email); // 2nd session for unique email
				response.sendRedirect("HomePage.jsp");
				
		    }
		    else%>
		     		<script type="text/javascript">
		     			alert("Access Denied..!");
		     			window.location="Login.jsp";
		     		</script>
		    <%}catch(Exception e){
			e.printStackTrace();
			 
			
		}
	%>

</body>
</html>