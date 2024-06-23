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
<%
	int evid = Integer.parseInt(request.getParameter("evid"));
	String evtitle = request.getParameter("evtitle");
	String evdesc = request.getParameter("evdesc");
	int studid= SetEmail.getUid();
	String studemail = SetEmail.getUemail();
	try
	{
		Connection con = ConnectDB.connectionDB();
		PreparedStatement ps1 = con.prepareStatement("select * from studapply_tbl where studemail=? and (id=? and type='Ev')");
		ps1.setString(1, studemail);
		ps1.setInt(2,evid);
		ResultSet rs = ps1.executeQuery();
		if(rs.next())
		{
			response.sendRedirect("StudViewAssEv.jsp");
		}
		else
		{
			PreparedStatement ps2 = con.prepareStatement("insert into studapply_tbl values (?,?,?,?,?,?,?)");
			ps2.setInt(1, 0);
			ps2.setInt(2,studid);
			ps2.setString(3, studemail);
			ps2.setInt(4, evid);
			ps2.setString(5,evtitle);
			ps2.setString(6,evdesc);
			ps2.setString(7,"Ev");
			int i = ps2.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("StudViewAssEv.jsp");
				
			}
			else
			{
				System.out.println("Error");
			}
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>

</body>
</html>