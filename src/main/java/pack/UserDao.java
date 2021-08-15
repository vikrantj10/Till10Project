package pack;
import java.sql.*;
public class UserDao {
public void Insert(UserDetails UD) throws ClassNotFoundException, SQLException
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","jaam");
	PreparedStatement ps = con.prepareStatement("insert into signup values(?,?,?,?,?);");
	ps.setString(1, UD.getEmail());
	ps.setString(2, UD.getFirstname());
	ps.setString(3, UD.getLastname());
	ps.setString(4, UD.getPassword());
	ps.setString(5, UD.getMobileno());
	int count = ps.executeUpdate();
	if(count>0)
    System.out.println(count+" rows affected ");
	else
	System.out.println("Syntex error");
}
public boolean update(UserDetails ud) throws ClassNotFoundException, SQLException
{
	boolean f = false;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","jaam");
	String query = "update signup set firstname=? , lastname=? , password=? , mobileno=? where email=?";
	PreparedStatement ps = con.prepareStatement(query);
	ps.setString(1, ud.getFirstname());
	ps.setString(2, ud.getLastname());
	ps.setString(3, ud.getPassword());
	ps.setString(4, ud.getMobileno());
	ps.setString(5, ud.getEmail());
	ps.executeUpdate();
	f=true;
	return f;
	
}
}
