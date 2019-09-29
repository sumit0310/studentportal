<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Student Registration Form</title>
<link rel="stylesheet" type="text/css" href="css/studentportal.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div class="container text-center"
		style="background: #f6f3f2; padding: 70px;">

		<h3>STUDENT REGISTRATION FORM</h3>
		<form name="regform" action="RegisterProcess.jsp" method="POST"
			onsubmit="return validation()">

			<div class="col-sm-6">
				<div class="form-group signup">

					<table align="center" cellpadding="10">

						<!----- First Name ---------------------------------------------------------->
						<tr>
							<td>FIRST NAME</td>
							<td><input type="text" name="First_Name" maxlength="30" />
								(max 30 characters a-z and A-Z)</td>
						</tr>

						<!----- Last Name ---------------------------------------------------------->
						<tr>
							<td>LAST NAME</td>
							<td><input type="text" name="Last_Name" maxlength="30" />
								(max 30 characters a-z and A-Z)</td>
						</tr>

						<!----- Date Of Birth -------------------------------------------------------->
						<tr>
							<td>DATE OF BIRTH</td>
						<td><input type="date" name="date" /></td>
							
							
						<!----- Email Id ---------------------------------------------------------->
						<tr>
							<td>EMAIL ID</td>
							<td><input type="text" name="Email_Id" maxlength="100" /></td>
						</tr>

						<!----- Mobile Number ---------------------------------------------------------->
						<tr>
							<td>MOBILE NUMBER</td>
							<td><input type="text" name="Mobile_Number" maxlength="10" />
								(10 digit number)</td>
						</tr>

						<!----- Gender ----------------------------------------------------------->
						<tr>
							<td>GENDER</td>
							<td>Male <input type="radio" name="Gender" value="Male" />
								Female <input type="radio" name="Gender" value="Female" />
							</td>
						</tr>

						<!----- Address ---------------------------------------------------------->
						<tr>
							<td>ADDRESS <br /> <br /> <br /></td>
							<td><textarea class="address" name="Address" rows="4"
									cols="30"></textarea></td>
						</tr>

						<!----- City ---------------------------------------------------------->
						<tr>
							<td>CITY</td>
							<td><input type="text" name="City" maxlength="30" /> (max
								30 characters a-z and A-Z)</td>
						</tr>

						<!----- Pin Code ---------------------------------------------------------->
						<tr>
							<td>PIN CODE</td>
							<td><input type="text" name="Pin_Code" maxlength="6" /> (6
								digit number)</td>
						</tr>

						<!----- State ---------------------------------------------------------->
						<tr>
							<td>STATE</td>
							<td><input type="text" name="State" maxlength="30" /> (max
								30 characters a-z and A-Z)</td>
						</tr>

						<!----- Country ---------------------------------------------------------->
						<tr>
							<td>COUNTRY</td>
							<td><input type="text" name="Country" value="India"
								readonly="readonly" /></td>
						</tr>

						<!----- Hobbies ---------------------------------------------------------->

						<tr>
							<td>HOBBIES <br /> <br /> <br /></td>

							<td>Drawing <input type="checkbox" name="Hobby_Drawing"
								value="Drawing" /> Singing <input type="checkbox"
								name="Hobby_Singing" value="Singing" /> Dancing <input
								type="checkbox" name="Hobby_Dancing" value="Dancing" />
								Sketching <input type="checkbox" name="Hobby_Cooking"
								value="Cooking" /> <br /> Others <input type="checkbox"
								name="Hobby_Other" value="Other"> <input type="text"
								name="Other_Hobby" maxlength="30" />
							</td>
						</tr>

						<!----- Qualification---------------------------------------------------------->
						<tr>
							<td>QUALIFICATION <br /> <br /> <br /> <br /> <br /> <br />
								<br /></td>

							<td>
								<table>

									<tr>
										<td align="center"><b>Sl.No.</b></td>
										<td align="center"><b>Examination</b></td>
										<td align="center"><b>Board</b></td>
										<td align="center"><b>Percentage</b></td>
										<td align="center"><b>Year of Passing</b></td>
									</tr>

									<tr>
										<td>1</td>
										<td>Class X</td>
										<td><input type="text" name="ClassX_Board" maxlength="30" /></td>
										<td><input type="text" name="ClassX_Percentage"
											maxlength="30" /></td>
										<td><input type="text" name="ClassX_YrOfPassing"
											maxlength="30" /></td>
									</tr>

									<tr>
										<td>2</td>
										<td>Class XII</td>
										<td><input type="text" name="ClassXII_Board"
											maxlength="30" /></td>
										<td><input type="text" name="ClassXII_Percentage"
											maxlength="30" /></td>
										<td><input type="text" name="ClassXII_YrOfPassing"
											maxlength="30" /></td>
									</tr>

									<tr>
										<td>3</td>
										<td>Graduation</td>
										<td><input type="text" name="Graduation_Board"
											maxlength="30" /></td>
										<td><input type="text" name="Graduation_Percentage"
											maxlength="30" /></td>
										<td><input type="text" name="Graduation_YrOfPassing"
											maxlength="30" /></td>
									</tr>

									<tr>
										<td>4</td>
										<td>Masters</td>
										<td><input type="text" name="Masters_Board"
											maxlength="30" /></td>
										<td><input type="text" name="Masters_Percentage"
											maxlength="30" /></td>
										<td><input type="text" name="Masters_YrOfPassing"
											maxlength="30" /></td>
									</tr>

									<tr>
										<td></td>
										<td></td>
										<td align="center">(10 char max)</td>
										<td align="center">(upto 2 decimal)</td>
									</tr>
								</table>

							</td>
						</tr>

						<!----- Course ---------------------------------------------------------->
						<tr>
							<td>COURSES<br />APPLIED FOR
								<td>BCA <input type="radio" name="Course_BCA" checked value="BCA"></td>
								<td>B.Com <input type="radio" name="Course_BCom" value="B.Com"></td>
								<td>B.Sc <input type="radio" name="Course_BSc" value="B.Sc"></td>
								<td>B.A <input type="radio" name="Course_BA" value="B.A"></td>
						</tr>

						<!----- Submit and Reset ------------------------------------------------->
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="Submit"> <input type="reset" value="Reset"></td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>


	<%@ include file="Footer.jsp"%>
	<script type="text/javascript" src="javascript/jquery.js"></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
</body>
</html>