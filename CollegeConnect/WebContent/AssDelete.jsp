
<%@page import="rcpit.comp1.connectdb.*"%>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AssDelete</title>
</head>
<body>
			

			<%int assid = Integer.parseInt(request.getParameter("assid"));
			try
			{
				Connection con = ConnectDB.connectionDB();
				
				PreparedStatement ps1 = con.prepareStatement("delete from association_tbl where assid=?");
				ps1.setInt(1,assid);
		
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("AdminAssView.jsp");
				}
				else
				{
					System.out.println("Error");
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			%>
</body>
</html>