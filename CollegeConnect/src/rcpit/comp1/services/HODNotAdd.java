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
 * Servlet implementation class HODNotAdd
 */
public class HODNotAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HODNotAdd() {
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
		String hodnottitle = request.getParameter("nottitle");
		String hodnotdesc = request.getParameter("notdesc");
		try
		{
			Connection con = ConnectDB.connectionDB();
			PreparedStatement ps1 = con.prepareStatement("insert into hodnot_tbl values(?,?,?,?)");
			ps1.setInt(1,0);
			ps1.setString(2,hodnottitle);
			ps1.setString(3,hodnotdesc);
			ps1.setInt(4,SetEmail.getUid());
			
			
			int i = ps1.executeUpdate();
			if(i==1)
			{
				
				response.sendRedirect("HODMenu.jsp");
			}
			else
			{
				response.sendRedirect("HODAddNot.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}