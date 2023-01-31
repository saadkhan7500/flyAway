<%@ page import="service.*"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
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
					<A Href="#" style="color: #C70039;">Admin Dashboard <i
						class="fa fa-plane" style="font-size: 25px;"></i></A>
				</H1>
			</Div>
			 <Nav Class="Site-Navigation">
                <Ul Class="Nav">
                    <Li><A class="btn btn-danger" Href="index.jsp">Logout</A></Li>
                </Ul>
            </Nav>
		</Header>
		<h1>All flights</h1>



		<table style="width: 100%" class="table table-striped table-dark">
			<thead class="thead-light">
				<tr style="background-color: black; color: white;">
					<td>Flight ID</td>
					<td>Airlines</td>
					<td>Source</td>
					<td>Destination</td>
					<td>Ticket Price</td>

				</tr>
			</thead>
			<%
			List<Flight> flight = FlightImpl.getAllFlights();

			for (Flight f : flight) {
			%>
			<tr>
				<td><%=f.getF_ID()%></td>
				<td><%=f.getAirline().getAirlineName()%></td>
				<td><%=f.getPlaces().getSource()%></td>
				<td><%=f.getPlaces().getDestination()%></td>
				<td><%=f.getTicketPrice()%></td>
			</tr>
			<%
			}
			%>


		</table>


	</div>

</body>
</html>
