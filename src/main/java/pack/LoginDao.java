package pack;
import java.sql.*;
public class LoginDao {
public UserDetails check(String email,String password) throws ClassNotFoundException, SQLException
{
	UserDetails ud= null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","jaam");
	PreparedStatement ps = con.prepareStatement("select * from signup where email=? and password=?;");
	ps.setString(1, email);
	ps.setString(2, password);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		ud= new UserDetails();
		ud.setEmail(rs.getString(1));
		ud.setFirstname(rs.getString(2));
		ud.setLastname(rs.getString(3));
		ud.setPassword(rs.getString(4));
	    ud.setMobileno(rs.getString(5));
	    return ud;
	}
	return ud;
}
}
