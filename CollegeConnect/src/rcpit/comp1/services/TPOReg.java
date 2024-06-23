package rcpit.comp1.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;
import rcpit.comp1.connectdb.SetEmail;

/**
 * Servlet implementation class TPOReg
 */
public class TPOReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TPOReg() {
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
		String tponame = request.getParameter("tponame");
		String tpoemail = request.getParameter("tpoemail");
		String tpopass1 = request.getParameter("tpopass1");
		String tpopass2 = request.getParameter("tpopass2");
		if(tpopass1.equals(tpopass2))
		{
			try
			{
				Connection con = ConnectDB.connectionDB();
				PreparedStatement ps1 = con.prepareStatement("insert into tpo_tbl values(?,?,?,?)");
				ps1.setInt(1, 0);
				ps1.setString(2,tponame);
				ps1.setString(3,tpoemail);
				ps1.setString(4,tpopass1);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					SetEmail.setUemail(tpoemail);
				
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
			response.sendRedirect("AddTPO.jsp");
		}
		
	}

}
