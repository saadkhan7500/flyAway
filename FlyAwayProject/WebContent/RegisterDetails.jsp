<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

/* Resetting */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background-color: #dcf4ff;
}

.wrapper {
	max-width: 800px;
	margin: 50px auto;
}

.wrapper form {
	padding: 30px 50px;
}

.wrapper form .form-group {
	padding-bottom: .5rem;
}

.wrapper form .option {
	position: relative;
	padding-left: 25px;
	cursor: pointer;
	display: block;
}

.wrapper form .option input {
	display: none;
}

.wrapper form .checkmark {
	position: absolute;
	top: 4px;
	left: 0;
	height: 17px;
	width: 17px;
	background-color: #fff;
	border: 1px solid #aaa;
	border-radius: 50%;
}

.wrapper form .option input:checked ~.checkmark:after {
	display: block;
}

.wrapper form .option .checkmark:after {
	content: "";
	width: 7px;
	height: 7px;
	display: block;
	border-radius: 50%;
	background-color: #333;
	position: absolute;
	top: 48%;
	left: 52%;
	transform: translate(-50%, -50%) scale(0);
	transition: 200ms ease-in-out 0s;
}

.wrapper form .option:hover input[type="radio"] ~.checkmark {
	background-color: #f4f4f4;
}

.wrapper form .option input[type="radio"]:checked ~.checkmark {
	background: #fff;
	color: #fff;
	transition: 300ms ease-in-out 0s;
}

.wrapper form .option input[type="radio"]:checked ~.checkmark:after {
	transform: translate(-50%, -50%) scale(1);
	color: #fff;
}

.wrapper form a {
	color: #333;
}

.wrapper form .form-control {
	outline: none;
	border: none;
}

.wrapper form .form-control:focus {
	box-shadow: none;
}

.wrapper form input[type="text"]:focus::placeholder {
	color: transparent
}

input[type="date"] {
	cursor: pointer;
}

.wrapper form .label::after {
	position: absolute;
	/* background-color: #fff; */
	top: 5px;
	left: 0px;
	font-size: 0.9rem;
	margin: 0rem 0.4rem;
	text-transform: uppercase;
	letter-spacing: 0.08rem;
	font-weight: 600;
	color: #999;
	transition: all .2s ease-in-out;
	transform: scale(0);
}

.wrapper form .label#from::after {
	content: 'From';
}

.wrapper form .label#to::after {
	content: 'To';
}

.wrapper form .label#depart::after {
	content: 'Depart Date';
}

.wrapper form .label#return::after {
	content: 'Return Date';
}

.wrapper form .label#psngr::after {
	content: 'Traveller(s)';
}

.wrapper form input[type="text"]:focus ~.label::after {
	top: -15px;
	left: 0px;
	transform: scale(1);
}

.wrapper form input[type="date"]:focus ~.label::after {
	top: -15px;
	left: 0px;
	transform: scale(1);
}

/* Margin */
.margin {
	margin: 2rem 0rem;
}

/* Media Queries */
@media ( max-width : 575.5px) {
	.wrapper {
		margin: 10px;
	}
	.wrapper form {
		padding: 20px;
	}
	.margin {
		margin: .2rem 0rem;
	}
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: white;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
</head>
<body>
	<a href="index.jsp">Home</a>

	<%
	String fid = request.getParameter("fid");
	String pno = request.getParameter("pno");
	String date = request.getParameter("date");
	%>

	<div class="wrapper bg-white" style="border: 2px solid black;">
		<h1>Register</h1>
		<p>Please fill in this form to book the flight</p>
		<form action="PassengerImpl.jsp">
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" value="<%=fid%>" required placeholder="F_ID"
					class="form-control" name="fid" id="name" readonly>
				<div class="label"></div>
				<span class="fas fa-dot-circle text-muted"></span>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" value="<%=date%>" required placeholder="Date"
					class="form-control" name="date" id="name" readonly>
				<div class="label"></div>
				<span class="fas fa-calendar-alt text-muted"></span>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" value="<%=pno%>" required
					placeholder="Number of Passenger" class="form-control" name="pno"
					id="name" readonly>
				<div class="label"></div>
				<span class="fas fa-users text-muted"></span>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" required placeholder="Email" class="form-control"
					name="email" id="email" required>
				<div class="label"></div>
				<span class="fa fa-envelope text-muted"></span>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" required placeholder="Name" class="form-control"
					name="name" id="name" required>
				<div class="label"></div>
				<span class="fas fa-user text-muted"></span>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<input type="text" required placeholder="Age" class="form-control"
					name="age" id="age" required>
				<div class="label"></div>
				<span class="fas fa-user text-muted"></span>
			</div>
			<div class="form-group my-3">
				<button
						class=" btn-primary rounded-0 d-flex justify-content-center text-center p-3"
						type="submit" name="search">Submit</button>
			</div>
		</form>

	</div>

</body>
</html>