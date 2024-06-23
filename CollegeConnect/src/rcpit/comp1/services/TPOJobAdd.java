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
 * Servlet implementation class TPOJobAdd
 */
public class TPOJobAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TPOJobAdd() {
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
		String jobtitle = request.getParameter("jobtitle");
		String jobdesc = request.getParameter("jobdesc");
	;
		String jobDS = request.getParameter("jobDS");
		String jobComp = request.getParameter("jobComp");
		String jobAIML = request.getParameter("jobAIML");
		int n1,n2,n3;
		if(jobDS==null) n3=0;else n3=1;
		if(jobAIML==null) n2=0;else n2=1;
		if(jobComp==null) n1=0;else n1=1;
		if(n1==1||n2==1|n3==1)
		{
			try
			{
				Connection con = ConnectDB.connectionDB();
				PreparedStatement ps1 = con.prepareStatement("insert into job_tbl values(?,?,?,?,?,?,?,?)");
				ps1.setInt(1,0);
				ps1.setString(2,jobtitle);
				ps1.setString(3,jobdesc);
				ps1.setInt(4,SetEmail.getUid());
				ps1.setInt(5,1);
				ps1.setInt(6,n1);
				ps1.setInt(7,n2);
				ps1.setInt(8,n3);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("TPOMenu.jsp");
				}
				else
				{
					response.sendRedirect("TPOAddJob.jsp");
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			response.sendRedirect("TPOAddJob.jsp");
		}
	}

}
