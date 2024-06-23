<%@page import="rcpit.comp1.connectdb.*" %>

    <%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<%
				try
				{
					int notid = Integer.parseInt(request.getParameter("notid"));
					Connection con = ConnectDB.connectionDB();
					PreparedStatement ps = con.prepareStatement("delete from not_tbl where notid=?");
					ps.setInt(1, notid);
					
					int i = ps.executeUpdate();
					if(i==1)
					{
						response.sendRedirect("AssViewNot.jsp");
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