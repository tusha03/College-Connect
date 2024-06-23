package rcpit.comp1.services;

import java.io.IOException;
import java.sql.*;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;

/**
 * Servlet implementation class HODReg
 */
public class HODReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HODReg() {
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
		String hodname = request.getParameter("hodname");
		String hodemail = request.getParameter("hodemail");
		String hodpass1 = request.getParameter("hodpass1");
		String hodpass2 = request.getParameter("hodpass2");
		String hodbranch = request.getParameter("branch");
		if(hodpass1.equals(hodpass2))
		{
			try
			{
				Connection con = ConnectDB.connectionDB();
				PreparedStatement ps = con.prepareStatement("select * from hod_tbl where hodbranch=? or hodemail=?");
				ps.setString(1,hodemail);
				ps.setString(2,hodemail);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					response.sendRedirect("AddHOD.jsp");
				}
				else
				{
					PreparedStatement ps1 = con.prepareStatement("insert into hod_tbl values (?,?,?,?,?)");
					ps1.setInt(1, 0);
					ps1.setString(2,hodname);
					ps1.setString(3,hodemail);
					ps1.setString(4,hodpass1);
					ps1.setString(5,hodbranch);
					int i = ps1.executeUpdate();
					if(i==1)
					{
						response.sendRedirect("AdminMenu.jsp");
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
		}
		else
		{
			response.sendRedirect("AddHOD.jsp");
		}
		
	}

}
