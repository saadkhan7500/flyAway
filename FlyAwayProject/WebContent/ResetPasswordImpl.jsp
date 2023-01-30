<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="service.*" %>
 <%@ page import="entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String psw1 =  request.getParameter("psw1");
                  
                    Admin admin = new Admin("Admin",psw1); 
                  AdminImpl.resetPassword(admin);
                
       			   response.getWriter().println("<p style='text-align:center;color:green;margin-top:2%;'>Password reset successfully</p>");
       			   
       			  request.getRequestDispatcher("AdminDashboard.jsp").include(request, response);
%>

</body>
</html>