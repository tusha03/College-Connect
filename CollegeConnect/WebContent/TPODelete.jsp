
<%@page import="rcpit.comp1.connectdb.*"%>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TPODelete</title>
</head>
<body>
			

			<%int tpoid = Integer.parseInt(request.getParameter("tpoid"));
			try
			{
				Connection con = ConnectDB.connectionDB();
				
				PreparedStatement ps1 = con.prepareStatement("delete from tpo_tbl where tpoid=?");
				ps1.setInt(1,tpoid);
		
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("AdminTPOView.jsp");
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