<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="entities.*" %>
 <%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String airline =   request.getParameter("airline");
            String  source =   request.getParameter("source");
            String destination = request.getParameter("destination");
            String ticketPrice = request.getParameter("price");

            Airlines a = new Airlines(airline);
            Places p = new Places(source, destination);
            Flight f = new Flight(a,p,ticketPrice);
            
            FlightImpl.addFlightDetails(f);
  
           out.println("Flight details added successfully");
%>

</body>
</html>