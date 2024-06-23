package rcpit.comp1.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rcpit.comp1.connectdb.ConnectDB;
import rcpit.comp1.connectdb.SetEmail;

/**
 * Servlet implementation class LoginStud
 */
public class LoginStud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginStud() {
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
		String studemail = request.getParameter("studemail");
		String studpass = request.getParameter("studpass");
		try
		{
			Connection con = ConnectDB.connectionDB();
			PreparedStatement ps1 = con.prepareStatement("select * from stud_tbl where (studemail=? and studpass = ?) and studstatus = '1'");
			ps1.setString(1,studemail);
			ps1.setString(2,studpass);
			ResultSet rs = ps1.executeQuery();
			if(rs.next())
			{
//				System.out.println(rs.getInt(1));
				SetEmail.setUemail(studemail);
				SetEmail.setUid(rs.getInt(1));
				response.sendRedirect("StudMenu.jsp");
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