<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.form-control {
	background-color: #ffe9e3 !important;
}

input {
	background-color: #ffe9e3 !important;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<section>
	<div class="container" style="background-color: #f6f3f2;">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 col-lg-8 col-xl-6">
				<div class="row">
					<div class="col text-center" style="margin-top: 60px;">
						<h1>Registration Form</h1>
						<!--  <p class="text-h3">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia. </p> -->
					</div>
				</div>
				<!-- <div class="row align-items-center">
            <div class="col mt-4">
              <input type="text" class="form-control" placeholder="First Name">
            </div>
          </div>
          
          <div class="row align-items-center">
            <div class="col mt-4">
              <input type="text" class="form-control" placeholder="Company Name">
            </div>
          </div> -->
          <form action="RegisterProcess.jsp" method="post">
				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="text" class="form-control" name="First_Name" placeholder="First Name">
					</div>
					<div class="col">
						<input type="text" class="form-control" name="Last_Name" placeholder="Last Name">
					</div>
				</div>

				<div class="row align-items-center">
					<div class="col mt-4">
						<input type="date" class="form-control" name="Birthdate" placeholder="DOB">
					</div>
				</div>

				<div class="row align-items-center">
					<div class="col mt-4">
						<input type="email" class="form-control" name="Email_Id" placeholder="Email id">
					</div>
				</div>

				<div class="row align-items-center">
					<div class="col mt-4">
						<input type="text" class="form-control" name="Mobile_Number" placeholder="Mobile no">
					</div>
				</div>

				<div class="form-group" class="input_field radio_option"style="margin-top: 25px;">
							<input type="radio" name="gender" value="male"> Male
 						 <input type="radio" name="gender" value="female"> Female
  						<input type="radio" name="gender" value="other"> Other
					
					<!-- <input type="radio" name="Male" value="MALE"> <label
						for="rd1">Male</label> 
						<input type="radio" name="Female"
						id="rd2"> <label for="rd2">Female</label> -->
				</div>
				<!-- <div class="radio">
		  <label><input type="radio" name="optradio" checked>Option 1</label>
		</div>
		<div class="radio" style="margin-top: 25px;">
		  <label><input type="radio" name="optradio">Option 2</label>
		</div> -->

				<div class="form-group">
					<!-- 		  <label for="comment">Address:</label>
 -->
					<textarea class="form-control" rows="5" id="comment"
						name="Address" placeholder="Address"></textarea>
				</div>

				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="text" class="form-control" name="City" placeholder="City">
					</div>
				</div>
				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="text" class="form-control" name="Pin_Code" placeholder="Pincode">
					</div>
				</div>
				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="text" class="form-control" name="State" placeholder="State">
					</div>
				</div>
				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="text" class="form-control" name="Country" placeholder="Country">
					</div>
				</div>
				<table class="form-control" align="center" cellpadding="10"
					style="margin-top: 25px;">

					<!----- Qualification---------------------------------------------------------->
					<tr>
						<!-- <td>QUALIFICATION <br /> <br /> <br /> <br /> <br /> <br />
								<br /></td>

							<td> -->
						<table>

							<tr>
								<td align="center"><b>S.No.</b></td>
								<td align="center"><b>Examination</b></td>
								<td align="center"><b>Percentage</b></td>
								<td align="center"><b>Year of Passing</b></td>
							</tr>

							<tr>
								<td>1</td>
								<td>Class X</td>
								<!-- 										<td><input type="text" name="ClassX_Board" maxlength="30" /></td>
 -->
								<td><input type="text" name="ClassX_Percentage"
									maxlength="30" /></td>
								<td><input type="text" name="ClassX_YrOfPassing"
									maxlength="30" /></td>
							</tr>

							<tr>
								<td>2</td>
								<td>Class XII</td>
								<!-- <td><input type="text" name="ClassXII_Board"
											maxlength="30" /></td> -->
								<td><input type="text" name="ClassXII_Percentage"
									maxlength="30" /></td>
								<td><input type="text" name="ClassXII_YrOfPassing"
									maxlength="30" /></td>
							</tr>

							<tr>
								<td>3</td>
								<td>Graduation</td>
								<!-- <td><input type="text" name="Graduation_Board"
											maxlength="30" /></td> -->
								<td><input type="text" name="Graduation_Percentage"
									maxlength="30" /></td>
								<td><input type="text" name="Graduation_YrOfPassing"
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
				</table>

				<!-- <div class="dropdown">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
    Subject
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div> -->
				<div class="form-group" class="input_field radio_option"
					style="margin-top: 25px;">
					
						<input type="radio" name="course" value="btech"> Btech
 						 <input type="radio" name="course" value="bca"> BCA
  						<input type="radio" name="course" value="mca"> MCA
  						<input type="radio" name="course" value="mtech"> Mtech
				</div>
				<div class="row align-items-center mt-4">
					<div class="col">
						<input type="password" class="form-control" name="pwd" placeholder="Password">
					</div>
				</div>
				<!-- <div class="row justify-content-start mt-4">
            <div class="col">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="checkbox" class="form-check-input">
                  I Read and Accept <a href="https://www.froala.com">Terms and Conditions</a>
                </label>
              </div> -->

				<button type="submit" class="btn btn-primary mt-4">Register</button>
				</form>
			</div>
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