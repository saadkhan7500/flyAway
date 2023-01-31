<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@Import
	Url("Https://Fonts.Googleapis.Com/Css2?Family=Open+Sans&Display=Swap");

Body {
	Font-Family: "Open Sans", Sans-Serif;
	Margin: 0;
	background-color: "green";
}

A {
	Text-Decoration: None;
	Color: #000;
}

A:hover {
	Color: Rgb(179, 179, 179);
}

.Site-Header {
	Border-Bottom: 1px Solid #Ccc;
	Padding: 0.5em 1em;
	Display: Flex;
	Justify-Content: Space-Between;
}

.Site-Identity H1 {
	Font-Size: 1.5em;
	Margin: 0.6em 0;
	Display: Inline-Block;
	background-color: "green";
}

.Site-Navigation Ul, .Site-Navigation Li {
	Margin: 0;
	Padding: 0;
}

.Site-Navigation Li {
	Display: Inline-Block;
	Margin: 1.4em 1em 1em 1em;
}

body {
	margin: 0;
	font-family: "Lato", sans-serif;
}

.sidebar {
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
	position: fixed;
	height: 100%;
	overflow: auto;
}

.sidebar a {
	display: block;
	color: black;
	padding: 16px;
	text-decoration: none;
}

.sidebar a.active {
	background-color: #04AA6D;
	color: white;
}

.sidebar a:hover:not(.active) {
	background-color: #555;
	color: white;
}

div.content {
	margin-left: 200px;
	padding: 1px 16px;
	height: 1000px;
}

@media screen and (max-width: 700px) {
	.sidebar {
		width: 100%;
		height: auto;
		position: relative;
	}
	.sidebar a {
		float: left;
	}
	div.content {
		margin-left: 0;
	}
}

.form-inline {
	display: flex;
	flex-flow: row wrap;
	align-items: center;
}

.form-inline label {
	margin: 5px 10px 5px 0;
}

.form-inline input {
	vertical-align: middle;
	margin: 5px 10px 5px 0;
	padding: 10px;
	background-color: #fff;
	border: 1px solid #ddd;
}

.form-inline button {
	padding: 10px 20px;
	background-color: dodgerblue;
	border: 1px solid #ddd;
	color: white;
	cursor: pointer;
}

.form-inline select {
	padding: 10px 20px;
	background-color: black;
	border: 1px solid #ddd;
	color: white;
	cursor: pointer;
}

.form-inline button:hover {
	background-color: royalblue;
}

@media screen and (max-width: 400px) {
	.sidebar a {
		text-align: center;
		float: none;
	}
}
</style>
</head>
<body>

	<div class="sidebar">
		<a style="color: blue" class="active" href="AdminDashboard.jsp">Home</a>
		 <a href="AllPlaces.jsp">All Places</a>
         <a href="AllAirlines.jsp">All Airlines</a>
  <a href="AllFlights.jsp">All FLights</a>
		<a Href="ResetPassword.jsp">Reset Password</a>

	</div>

	<div class="content">
		<Header Class="Site-Header">
			<Div Class="Site-Identity">
				<H1>
					<A Href="index.jsp" style="color: #C70039;">Admin Dashboard <i
						class="fa fa-plane" style="font-size: 25px;"></i></A>
				</H1>
			</Div>

		</Header>
		<h1>Add flight details</h1>
		<form style="margin-top: 10%; border: 2px dashed black;"
			class="form-inline" action="AddFlight.jsp">


			<label for="text"> Airlines:</label> <input type="text" id="email"
				placeholder="Enter Airline name" name="airline"> <label
				for="text">Source:</label> <select name="source" id="source"
				class="form-control">
				<option value="Delhi">Delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Chennai">Chennai</option>
				<option value="Hyderabad">Hyderabad</option>
				<option value="Kochi">Kochi</option>
				<option value="Kerela">Kerela</option>
				<option value="Ahmedabad">Ahmedabad</option>
			</select> <label for="text">Destination:</label> <select name="destination"
				id="destination" class="form-control">
				<option value="Mumbai">Mumbai</option>
				<option value="Delhi">Delhi</option>
				<option value="Chennai">Chennai</option>
				<option value="Hyderabad">Hyderabad</option>
				<option value="Kochi">Kochi</option>
				<option value="Kerela">Kerela</option>
				<option value="Ahmedabad">Ahmedabad</option>
			</select> <label for="text">Ticket Price:</label> <input type="text" id="pwd"
				placeholder="Enter ticket price" name="price">
			<button type="submit">Submit</button>
		</form>
	</div>

</body>
</html>
