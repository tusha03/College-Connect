package rcpit.comp1.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;
import rcpit.comp1.connectdb.SetEmail;

/**
 * Servlet implementation class AssReqAdd
 */
public class AssReqAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssReqAdd() {
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
		String reqtitle = request.getParameter("reqtitle");
		String reqdesc = request.getParameter("reqdesc");
		try
		{
			Connection con = ConnectDB.connectionDB();
			PreparedStatement ps1 = con.prepareStatement("insert into req_tbl values(?,?,?,?,?)");
			ps1.setInt(1,0);
			ps1.setString(2,reqtitle);
			ps1.setString(3,reqdesc);
			ps1.setInt(4,SetEmail.getUid());
			ps1.setInt(5,1);
			
			int i = ps1.executeUpdate();
			if(i==1)
			{
				
				response.sendRedirect("AssMenu.jsp");
			}
			else
			{
				response.sendRedirect("AssAddReq.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}