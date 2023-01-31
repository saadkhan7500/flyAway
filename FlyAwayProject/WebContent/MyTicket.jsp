<%@page import="java.util.*"%>
<%@page import="entities.*"%>
<%@page import="service.*"%>

<!DOCTYPE html>
<html>
<head>
<title>FlyAway</title>
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

table, th, td {
	border: 1px solid black;
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
		<a class="active" href="index.jsp">Home</a> <a href="#news">News</a> <a
			Href="AdminLogin.jsp">Admin Login</a> <a href="MyTicket.jsp">My
			Tickets</a> <a href="#about">About</a>
	</div>

	<div class="content">
		<Header Class="Site-Header">
			<Div Class="Site-Identity">
				<H1>
					<A Href="index.jsp">FlyAway <i class="fa fa-plane"
						style="font-size: 25px;"></i></A>
				</H1>
			</Div>
			<Nav Class="Site-Navigation">
				<Ul Class="Nav">
					<Li><A Href="index.jsp">Home</A></Li>
					<Li><A Href="AdminLogin.jsp">Admin Login</A></Li>
					<Li><A Href="#">About</A></Li>
					<Li><A Href="#">Contact</A></Li>
				</Ul>
			</Nav>
		</Header>
		<h2>Welcome to FlyAway</h2>


		<h1>My Tickets Details</h1>
		<form style="margin-top: 5%; border: 2px solid black;"
			class="form-inline" action="#">


			<label for="text"> Check by Email:</label> <input type="email"
				id="email" placeholder="Enter email" name="email" required>

			<button type="submit" name="search" value="search">
				<i class="fa fa-search" style="font-size: 24px"></i>
			</button>
		</form>
		<br>


		<%
		String search = request.getParameter("search");
		if (search != null) {
		%>

		<table style="width: 100%">
			<tr style="background-color: black; color: white;">
				<td>Flight ID</td>
				<td>Name</td>
				<td>Age</td>
				<td>Email</td>
				<td>Date</td>
				<td>Ticket No</td>
				<td>Price</td>
				<td>No. of pessenger</td>
				<td>Source</td>
				<td>Destination</td>
				<td>Airline</td>


			</tr>
			<%!Flight fli = null;%>

			<%
			String email = request.getParameter("email");

			List<Passenger> p = PassengerImpl.getAllPessengers();

			for (Passenger pes : p) {
				if (pes.getEmail().equals(email)) {
					List<Flight> f = FlightImpl.getAllFlights();

					for (Flight fl : f) {
				if (fl.getF_ID() == pes.getfId()) {
					fli = fl;
				}

					}
					//out.println("Airlines = "+f.getAirline().getAirlineName()+" Source = "+f.getPlaces().getSource()+" Destination = "+f.getPlaces().getDestination()+" Ticket Price"+f.getTicketPrice());
			%>
			<tr>
				<td><%=pes.getfId()%></td>
				<td><%=pes.getName()%></td>
				<td><%=pes.getAge()%></td>
				<td><%=pes.getEmail()%></td>
				<td><%=pes.getDate()%></td>
				<td><%=pes.getTicketNo()%></td>
				<td><%=Integer.parseInt(fli.getTicketPrice()) * pes.getNop()%></td>
				<td><%=pes.getNop()%></td>
				<td><%=fli.getPlaces().getSource()%></td>
				<td><%=fli.getPlaces().getDestination()%></td>
				<td><%=fli.getAirline().getAirlineName()%></td>


			</tr>
			<%
			}
			}

			search = null;
			}
			%>


		</table>
	</div>




</body>
</html>
