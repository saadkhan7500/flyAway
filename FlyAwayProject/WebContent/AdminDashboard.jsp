<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<title>FlyAwaySystem</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link href="css/style.css" rel="stylesheet" type="text/css">
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
		
	}
}
</style>
</head>
<body>

	<div class="sidebar">
		<a class="btn btn-warning" href="AdminDashboard.jsp">Home</a>
		<a class="btn btn-warning" href="AllPlaces.jsp">All Places</a> <a class="btn btn-warning" href="AllAirlines.jsp">All
			Airlines</a> <a class="btn btn-warning" href="AllFlights.jsp">All FLights</a> <a
			 class="btn btn-warning" href="AllPassengers.jsp">All Passenger</a> <a
			class="btn btn-warning" Href="ResetPassword.jsp">Reset Password</a>

	</div>

	<div class="content">
		<Header Class="Site-Header">
			<Div Class="Site-Identity">
				<H1>
					<A Href="index.jsp" style="color: #C70039;">Admin Dashboard <i
						class="fa fa-plane" style="font-size: 25px;"></i></A> <A
						style="margin-left: 350%;" Href="index.jsp">Logout</A>
				</H1>
			</Div>

		</Header>
		<h1>Add flight details</h1>
		
	
	<div class="wrapper bg-white">
		<form action="AddFlight.jsp">

			<div class="form-group d-sm-flex margin">
				<div
					class="d-flex align-items-center flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative">

					<div class="label" id="from">
						<label for="text"> Airlines:</label>
					</div>
					<input type="text" id="email" placeholder="Enter Airline name"
						name="airline" class="form-control">
				</div>


				<div
					class="d-flex align-items-center flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative">



					<select name="source" id="source" class="form-control">
						<option value="All">From</option>
						<option value="Delhi">Delhi</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Chennai">Chennai</option>
						<option value="Hyderabad">Hyderabad</option>
						<option value="Kochi">Kochi</option>
						<option value="Kerela">Kerela</option>
						<option value="Ahmedabad">Ahmedabad</option>
					</select> <span class="fas fa-dot-circle text-muted"></span>
				</div>
				<div
					class="d-flex align-items-center flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative">

					<div class="label" id="to"></div>
					<select name="destination" id="destination" class="form-control">
						<option value="All">To</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Delhi">Delhi</option>
						<option value="Chennai">Chennai</option>
						<option value="Hyderabad">Hyderabad</option>
						<option value="Kochi">Kochi</option>
						<option value="Kerela">Kerela</option>
						<option value="Ahmedabad">Ahmedabad</option>
					</select> <span class="fas fa-map-marker text-muted"></span>
				</div>
			</div>
			<div
				class="form-group border-bottom d-flex align-items-center position-relative">
				<div class="label" id="psngr"></div>
				<label for="text">Price:</label> <input type="text" id="pwd"
					placeholder="Enter ticket price" name="price" class="form-control">
			</div>
			<div class="form-group my-3">
				<button
					class="fa fa-search btn-primary rounded-0 d-flex justify-content-center text-center p-3"
					type="submit">Submit</button>
			</div>
		</form>

	</div>
</div>
</body>
</html>
