package rcpit.comp1.services;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;

/**
 * Servlet implementation class StudReg
 */
public class StudReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudReg() {
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
		
		String studname = request.getParameter("studname");
		String studbranch = request.getParameter("studbranch");
		String studemail = request.getParameter("studemail");
		String studpass1 = request.getParameter("studpass1");
		String studpass2 = request.getParameter("studpass2");
		boolean status = false;
		if(studpass1.equals(studpass2))
		{
			try
			{
				Connection con = ConnectDB.connectionDB();
				PreparedStatement ps  = con.prepareStatement("insert into stud_tbl values(?,?,?,?,?,?)");
				ps.setInt(1,0);
				ps.setString(2,studname);
				ps.setString(3,studemail);
				ps.setString(4,studpass1);
				ps.setString(5,studbranch);
				ps.setBoolean(6,status);
				int i =ps.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("index.html");
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
			response.sendRedirect("studReg.html");
		}
	}

}
