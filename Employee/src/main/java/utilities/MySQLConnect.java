package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnect {

	public static  Connection connectDB() throws ClassNotFoundException , SQLException {
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/employee";
		String user_name="root";
		String user_pw="";
		Connection con=DriverManager.getConnection(url, user_name, user_pw);
		return con;
		
	}

}
