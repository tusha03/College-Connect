package rcpit.comp1.services;

import rcpit.comp1.connectdb.SetEmail;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;


/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String aemail = request.getParameter("aemail");
		String apass = request.getParameter("apass");
		try
		{
			Connection con = ConnectDB.connectionDB();
			PreparedStatement ps1 = con.prepareStatement("select * from admin_tbl where aemail=? and apass = ?");
			ps1.setString(1,aemail);
			ps1.setString(2,apass);
			ResultSet rs = ps1.executeQuery();
			if(rs.next())
			{
				SetEmail.setUemail(aemail);
				response.sendRedirect("AdminMenu.jsp");
			}
			else
			{
				response.sendRedirect("index.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
