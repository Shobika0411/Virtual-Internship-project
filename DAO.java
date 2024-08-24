package praveen;

import java.sql.Connection;

import java.sql.DriverManager;

public class dao {
	public static Connection createConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","");
		    System.out.println("connection created");
//		    return con;
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
//		return null;
		return con;
}
}
