<%@page import="java.sql.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Process</title>
</head>
<body>
	<%
		String fname = request.getParameter("First_Name");
		String lname = request.getParameter("Last_Name");
		String birthdate = request.getParameter("Birthdate");
		/* String birthmonth = request.getParameter("Birthday_Month");
		String birthyear = request.getParameter("Birthday_Year"); */
		String email = request.getParameter("Email_Id");
		String mob = request.getParameter("Mobile_Number");
		/* 		String pwd = request.getParameter("pwd");
		 */ String gender = request.getParameter("gender");
		/* String female = request.getParameter("Gender"); */
		String add = request.getParameter("Address");
		String city = request.getParameter("City");
		String pin = request.getParameter("Pin_Code");
		String state = request.getParameter("State");
		String cont = request.getParameter("Country");
		/* String drawing = request.getParameter("Hobby_Drawing");
		String singing = request.getParameter("Hobby_Singing");
		String dancing = request.getParameter("Hobby_Dancing");
		String cooking = request.getParameter("Hobby_Cooking"); */
		/* String X = request.getParameter("ClassX_Board");
		*/ String x_per = request.getParameter("ClassX_Percentage");
		String x_year = request.getParameter("ClassX_YrOfPassing");
		/* 		String XII = request.getParameter("ClassXII_Board");
		 */ String XII_per = request.getParameter("ClassXII_Percentage");
		String XII_year = request.getParameter("ClassXII_YrOfPassing");
		/* 		String grad = request.getParameter("Graduation_Board");
		 */ String grad_per = request.getParameter("Graduation_Percentage");
		String grad_year = request.getParameter("Graduation_YrOfPassing");
		/* String master = request.getParameter("Masters_Board");
		String master_per = request.getParameter("Masters_Percentage");
		String master_year = request.getParameter("Masters_YrOfPassing"); */
		String course = request.getParameter("course");
		/* String bcom = request.getParameter("Course_BCom");
		String bsc = request.getParameter("Course_BSc");
		String ba = request.getParameter("Course_BA"); */
		/* 		String bsc = request.getParameter("Course_BSc");
		 */ String pwd = request.getParameter("pwd");
		 
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(birthdate);
		System.out.println(email);
		System.out.println(mob);
		System.out.println(add);
		System.out.println(gender);
		System.out.println(city);
		System.out.println(pin);
		System.out.println(state);
		System.out.println(cont);
		System.out.println(x_per);
		System.out.println(x_year);
		System.out.println(XII_per);
		System.out.println(XII_year);
		System.out.println(grad_per);
		System.out.println(grad_year);
		System.out.println(course);

		System.out.println(pwd);


		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentportal", "root", "");
			Statement stmt = con.createStatement();
			String sql = "insert into student(firstname,lastname,dob,emailid,phone_no,gender,address,city,pincode,state,country,x_percentage,x_passing,xii_percentage,xii_passing,grad_percentage,grad_passing,course,pass) values('"
					+ fname + "','" + lname + "','" + birthdate + "','" + email + "','" + mob
					+ "','" /* + pwd + "','" */ + gender + "','" + add + "','" + city + "','" + pin + "','" + state
					+ "','" + cont + "','" + x_per + "','" + x_year + "','" + XII_per + "','" + XII_year + "','"
					+ grad_per + "','" + grad_year + "','" + course + "','" + pwd + "');";
			int i = stmt.executeUpdate(sql);
			if (i > 0) {
	%>
	<script type="text/javascript">
		alert("Successfully Registered.. :) Please Login -->");
		window.location = "Login.jsp";
	</script>
	<%
		}
		} catch (Exception e) {
			out.println(e);
			e.printStackTrace();
		}
	%>
</body>
</html>