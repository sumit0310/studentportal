<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div class="container visitus text-center">
		<h2 style="margin-top: 20px;">VISIT US AT OUR STORE</h2>
		<br>

	<div class="mapouter align-center">
		<div class="gmap_canvas"><iframe width="600" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=niit%20technologies%20greater%20noida&t=&z=11&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
		</iframe><a href="https://www.utilitysavingexpert.com">Utility Saving Expert</a>
		</div><style>.mapouter{position:relative;text-align:right;height:400px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:600px;}</style>
		</div>
	</div>

	<div class="container text-center " style="margin-top: 10px;">
		<h2>About Us</h2>
		<span>  Since 2017 giftaffairshop has been putting
				the magic and excitement back into gifts. Now trading under the name
				<b>Gift Affair</b>, we're delivering delightfully Quirky but always
				stylish presents at irresistible prices. Original, gorgeous, and
				perfect for any occasion, our wide range of gifts is either
				exclusively designed or lovingly chosen by our talented buying
				teams.
		</span>
	</div>
	<br>

	<script type="text/javascript" src="javascript/jquery.js"></script>
	<script type="text/javascript" src="javascript/bootstrap.js"></script>
	<%@ include file="Footer.jsp"%>

</body>
</html>
