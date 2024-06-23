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
					int jobid = Integer.parseInt(request.getParameter("jobid"));
					Connection con = ConnectDB.connectionDB();
					PreparedStatement ps = con.prepareStatement("update job_tbl set jobstatus = ? where jobid=?");
					ps.setInt(2, jobid);
					ps.setInt(1, 0);
					int i = ps.executeUpdate();
					if(i==1)
					{
						response.sendRedirect("TPOViewJob.jsp");
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