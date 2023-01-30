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
String uName =  request.getParameter("uname");
                    String pswd=  request.getParameter("psw");
                    System.out.print(uName);
                    System.out.print(pswd);
                    Admin admin = new Admin(uName,pswd); 
                  int res =  AdminImpl.ifAdminExist(admin);
                  if(res==1)
                  {
                	  System.out.println("Exist");
                        response.sendRedirect("AdminDashboard.jsp");
                  }
                  else
                  {
                	  System.out.println("Not Exist");

       			   response.getWriter().println("<p style='text-align:center;color:red;margin-top:2%;'>Incorrect email or Password</p>");
       			   
       			  request.getRequestDispatcher("AdminLogin.jsp").include(request, response);
                  }
%>

</body>
</html>