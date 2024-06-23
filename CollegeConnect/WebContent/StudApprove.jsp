
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
			

			<%int studid = Integer.parseInt(request.getParameter("studid"));
			try
			{
				Connection con = ConnectDB.connectionDB();
				int n=1;
				PreparedStatement ps1 = con.prepareStatement("update stud_tbl set studstatus=? where studid=?");
				ps1.setInt(1,n);
				ps1.setInt(2, studid);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("AdminStudApprove.jsp");
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