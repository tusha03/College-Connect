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
 * Servlet implementation class StudReqConAdd
 */
public class StudReqConAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudReqConAdd() {
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
		String comment = request.getParameter("comment");
		String user = SetEmail.getUemail();
		int reqid = SetEmail.getJobid();
		int studid=SetEmail.getUid();
		try
		{
			Connection con = ConnectDB.connectionDB();
			PreparedStatement ps = con.prepareStatement("insert into reqcon_tbl values(?,?,?,?,?)");
			ps.setInt(1,0);
			ps.setInt(2,reqid);
			ps.setInt(3,studid);
			ps.setString(4,user);
			ps.setString(5,comment);
			int i =ps.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("StudAddReqCon.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
