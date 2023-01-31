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
String barcodeValue =  request.getParameter("barcodeValue");
		String fid =  request.getParameter("fid");
		String date =  request.getParameter("date");
		String pno =  request.getParameter("pno");
		String email =  request.getParameter("email");
		String name =  request.getParameter("name");
		String age =  request.getParameter("age");
		String ticketNo =  request.getParameter("ticketNo");
		
                      Passenger p = new Passenger(Integer.parseInt(fid),date,Integer.parseInt(pno),email,name,age,ticketNo);
                        
                        if(barcodeValue.equals("saad"))
                        {
                        	
                        	PassengerImpl.addPessengerDetails(p);
%>
                        	<div style="text-align:center">
                        	     <h2>Thanks for booking the flight below is your ticket no.</h2>
                        	      <h1><%=ticketNo %></h1>
                        	      
                        	      <br>
                        	      <a href="MyTicket.jsp">Check Ticket details</a>
                        	</div>
                        	
                        	<%
                        	
                        }
                        else
                        {
                        	%>
                        	<div style="text-align:center">
                        	     <h2>Oops! Payment not done successfully</h2>
                        	      <a href="index.jsp">Try Again</a>
                        	      
                        	</div>
                        	
                        	<%
                        	
                        }


%>

</body>
</html>