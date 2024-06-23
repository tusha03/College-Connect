<%@page import="rcpit.comp1.connectdb.*" %>

    <%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOD Not Delete</title>
</head>
<body>
			<%
				try
				{
					int hodnotid = Integer.parseInt(request.getParameter("hodnotid"));
					Connection con = ConnectDB.connectionDB();
					PreparedStatement ps = con.prepareStatement("delete from hodnot_tbl where hodnotid=?");
					ps.setInt(1, hodnotid);
					
					int i = ps.executeUpdate();
					if(i==1)
					{
						response.sendRedirect("HODViewNot.jsp");
					}
					else
					{
						System.out.println("\n\n\nError");
					}
				}
				catch(Exception e)
				{
						e.printStackTrace();
				}
					
					
			%>
</body>
</html>