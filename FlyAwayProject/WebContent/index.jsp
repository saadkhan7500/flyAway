<%@page import="java.util.*" %>
<%@page import="entities.*" %>
<%@page import="service.*" %>

<!DOCTYPE html>
<html>
<head>
<title>FlyAway</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@Import Url("Https://Fonts.Googleapis.Com/Css2?Family=Open+Sans&Display=Swap");
Body {
    Font-Family: "Open Sans", Sans-Serif;
    Margin: 0;
    background-color: "green";
}
table, th, td {
  border:1px solid black;
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
.Site-Navigation Ul,
.Site-Navigation Li {
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
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
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
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
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
  <a class="active" href="#home">Home</a>
  <a Href="AdminLogin.jsp">Admin Login <i class="fa fa-login" style="font-size:24px"></i></a>
</div>

<div class="content">
<Header Class="Site-Header">
            <Div Class="Site-Identity">
                <H1><A Href="index.jsp">FlyAway <i class="fa fa-plane" style="font-size:25px;"></i></A></H1>
            </Div>
            <Nav Class="Site-Navigation">
                <Ul Class="Nav">
                    <Li><A Href="#">Home</A></Li>
                    <Li><A Href="AdminLogin.jsp">Admin Login</A></Li>
                </Ul>
            </Nav>
        </Header>
        <h2>Welcome to FlyAway</h2>
  
  
    <h1>Search Flight</h1>
<form style="margin-top:5%; border:2px solid black;" class="form-inline" action="#">


  <label for="text"> Travel Date:</label>
  <input type="date" id=date" placeholder="Enter Date" name="date" required>
  <label for="text">Source:</label>
 <select name="source" id="source" class="form-control">
 <option value="All">All</option>
    <option value="Delhi">Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Chennai">Chennai</option>
    <option value="Hyderabad">Hyderabad</option>
    <option value="Kochi">Kochi</option>
    <option value="Kerela">Kerela</option>
    <option value="Ahmedabad">Ahmedabad</option>
 </select>
  <label for="text">Destination:</label>
   <select name="destination" id="destination" class="form-control">
   <option value="All">All</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Delhi">Delhi</option>
    <option value="Chennai">Chennai</option>
    <option value="Hyderabad">Hyderabad</option>
    <option value="Kochi">Kochi</option>
    <option value="Kerela">Kerela</option>
    <option value="Ahmedabad">Ahmedabad</option>
 </select>
 
   <label for="text">No of passengers:</label>
   <select name="pno" id="pno" class="form-control">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
 </select>
 
  <button type="submit" name="search" value="search"><i class="fa fa-search" style="font-size:24px"></i></button>
</form>
<br>

  
<%
String search= request.getParameter("search");
if(search!=null)
{
	%>
	
	<table style="width:100%">
  <tr style="background-color:black; color:white;">
    <td>Flight ID</td>
    <td>Airlines</td>
    <td>Source</td>
    <td>Destination</td>
     <td>Ticket Price</td>
    
  </tr>
	
	<%
		String date = request.getParameter("date");
				      String source = request.getParameter("source");
				      String destination = request.getParameter("destination");
				      String pno = request.getParameter("pno");
				      
				      List <Flight> flight =   FlightImpl.getAllFlights();

				      if(source.equals("All")||destination.equals("All"))
				      {
				    	  for(Flight f: flight)
				          {
		%>
        	<tr>
        	 <td><%=f.getF_ID() %></td>
        <td><%=f.getAirline().getAirlineName() %></td>
        <td><%=f.getPlaces().getSource() %></td>
        <td><%=f.getPlaces().getDestination() %></td>
        <td><%=f.getTicketPrice() %> </td>
        <td><a style="color:green;border-style: 2px solid;" href="RegisterDetails.jsp?fid=<%= f.getF_ID()%>&pno=<%=pno%>&date=<%=date%>"> Book Flight</a></td>
        	</tr>
        	<% 
        	  }
          
         search = null; 
    }
      
      else{
      for(Flight f: flight)
      {
    	  if(f.getPlaces().getSource().equalsIgnoreCase(source)&&f.getPlaces().getDestination().equalsIgnoreCase(destination) )
    	  {
   	   //out.println("Airlines = "+f.getAirline().getAirlineName()+" Source = "+f.getPlaces().getSource()+" Destination = "+f.getPlaces().getDestination()+" Ticket Price"+f.getTicketPrice());
    	%>
    	<tr>
    	 <td><%=f.getF_ID() %></td>
    <td><%=f.getAirline().getAirlineName() %></td>
    <td><%=f.getPlaces().getSource() %></td>
    <td><%=f.getPlaces().getDestination() %></td>
    <td><%=f.getTicketPrice() %> </td>
    <td><a style="color:green;border-style: 2px solid;" href="RegisterDetails.jsp?fid=<%= f.getF_ID()%>&pno=<%=pno%>&date=<%=date%>"> Book Flight</a></td>
    	</tr>
    	<% 
    	  }
    	  }
      
     search = null; 
}
}
%>


</table>
 
</div>


</body>
</html>
