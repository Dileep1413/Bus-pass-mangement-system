package pp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class bus {
	public static Statement st;
	public static Connection con;
		public static void odd()throws Exception {
			// TODO Auto-generated method stub
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("ddd");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dileep","root","qwertyuiop");
			System.out.println("connecton");
			 st=con.createStatement();
			System.out.println("statement "+st);
			}
			catch (Exception e)
			{
				e.printStackTrace();
				System.out.println(e);
			}
	 	  
		}


}
