<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<%@page import="entities.*" %>
<%@page import="service.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp">Home</a>
<div style="margin-left:25%;">
<h1>Below is the flight details you are booking</h1>
<table style="width:70%; height:100px;border:2px solid black;">
  <tr style="background-color:black; color:white;">
    <td>Flight ID</td>
    <td>Airlines</td>
    <td>Source</td>
    <td>Destination</td>
     <td>Ticket Price</td>
    
  </tr>
	
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
<h1>Scan below barcode and enter the text you got for confirm your booking</h1>
<div style="margin-left:25%;">
<img style="height:200px;width:200px" src="images/qr.png"/>

<form action="FinalPaymentPage.jsp" >
  
  <input type="text" name="barcodeValue" placeholder="Enter the value here"/>
  <input type="hidden" name="fid" value="<%=fid%>">
  <input type="hidden" name="date" value="<%=date%>">
  <input type="hidden" name="pno" value="<%=pno%>">
  <input type="hidden" name="email" value="<%=email%>">
  <input type="hidden" name="name" value="<%=name%>">
  <input type="hidden" name="age" value="<%=age%>">
  <input type="hidden" name="ticketNo" value="<%=ticketNo%>">
  <input type="submit" value="submit" name="submit"/>

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