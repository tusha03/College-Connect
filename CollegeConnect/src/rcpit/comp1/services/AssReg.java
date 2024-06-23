package rcpit.comp1.services;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;

/**
 * Servlet implementation class AssReg
 */
public class AssReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssReg() {
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
		
		String assname = request.getParameter("assname");
		String assemail = request.getParameter("assemail");
		String asspass1 = request.getParameter("asspass1");
		String asspass2 = request.getParameter("asspass2");
		String assbranch = request.getParameter("assbranch");
		if(asspass1.equals(asspass2))
		{
			try
			{
				Connection con = ConnectDB.connectionDB();
				PreparedStatement ps1 = con.prepareStatement("insert into association_tbl values (?,?,?,?,?)");
				ps1.setInt(1, 0);
				ps1.setString(2,assname);
				ps1.setString(3,assemail);
				ps1.setString(4,asspass1);
				ps1.setString(5,assbranch);
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
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			response.sendRedirect("AddAss.jsp");
		}
		
	}

}
