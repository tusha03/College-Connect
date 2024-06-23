package rcpit.comp1.connectdb;

import java.sql.*;

public class ConnectDB 
{
	static Connection con=null;
	public static Connection connectionDB()
	{
		if(con==null)
		{
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeConnect","root","");
			    //System.out.println("Connection Successfully...");
			} catch (Exception e) 
			{
				System.err.println("Something went wrong...");
				e.printStackTrace();
			}
		}
		return con;
		
	}
}
