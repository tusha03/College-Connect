
<%@page import="rcpit.comp1.connectdb.*"%>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			

			<%int hodid = Integer.parseInt(request.getParameter("hodid"));
			try
			{
				Connection con = ConnectDB.connectionDB();
				
				PreparedStatement ps1 = con.prepareStatement("delete from hod_tbl where hodid=?");
				ps1.setInt(1,hodid);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("AdminHODView.jsp");
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