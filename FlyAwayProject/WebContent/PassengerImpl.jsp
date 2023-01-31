<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<%@page import="entities.*" %>
<%@page import="service.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp">Home</a>
<div style="margin-left:25%;">
<h1 class="text text-warning">Below is the flight details you are booking</h1>
<table style="width:70%" class="table table-striped table-dark">
			<thead class="thead-light">
  <tr style="background-color:black; color:white;">
    <td>Flight ID</td>
    <td>Airlines</td>
    <td>Source</td>
    <td>Destination</td>
     <td>Ticket Price</td>
    
  </tr>
  </thead>
	
	<%
		
	
			  String fid =  request.getParameter("fid");
				    String date =  request.getParameter("date");
				    String pno =  request.getParameter("pno");
				    String email =  request.getParameter("email");
				    String name =  request.getParameter("name");
				    String age =  request.getParameter("age");
				    String ticketNo = UUID.randomUUID().toString();

				      
				      List <Flight> flight =   FlightImpl.getAllFlights();

				      for(Flight f: flight)
				      {
				    	  if(f.getF_ID()==Integer.parseInt(fid))
				    	  {
				   	   //out.println("Airlines = "+f.getAirline().getAirlineName()+" Source = "+f.getPlaces().getSource()+" Destination = "+f.getPlaces().getDestination()+" Ticket Price"+f.getTicketPrice());
		%>
    	<tr>
    	 <td><%=f.getF_ID() %></td>
    <td><%=f.getAirline().getAirlineName() %></td>
    <td><%=f.getPlaces().getSource() %></td>
    <td><%=f.getPlaces().getDestination() %></td>
    <td><%=Integer.parseInt(f.getTicketPrice())*Integer.parseInt(pno)%> </td>
    
 
    	</tr>
    	<% 
    	  }
    	  }
      
    
%>
</table>
<br>
<h1 style="margin-left: 10%" class="text text-warning">Scan and enter code</h1>
<div style="margin-left:15%; border: 2px solid black; width: 20%;">
<img style="height:200px;width:200px;padding-left: 20px;padding-top:20px " src="images/qr.png"/>
<br><br>
<form action="FinalPaymentPage.jsp" >
  
  <input style="margin-left: 20px;" type="text" name="barcodeValue" placeholder="Enter the value here"/>
  <input type="hidden" name="fid" value="<%=fid%>">
  <input type="hidden" name="date" value="<%=date%>">
  <input type="hidden" name="pno" value="<%=pno%>">
  <input type="hidden" name="email" value="<%=email%>">
  <input type="hidden" name="name" value="<%=name%>">
  <input type="hidden" name="age" value="<%=age%>">
  <input type="hidden" name="ticketNo" value="<%=ticketNo%>"> <br><br>
  <input style="margin-left: 20px;margin-bottom: 10px "type="submit" value="submit" name="submit"/>

</form>

</div>

<%
             if(request.getParameter("submit")!=null)
             {
                 String value = request.getParameter("barcodeValue");

                   out.println(value);
                   
             }
%>



</div>
</body>
</html>