package praveen;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class spcorporatedao {
	
	public int loginrecord(spcorporate spc) throws SQLException
		{
			int z=0;
			
				Connection con=dao.createConnection();
				PreparedStatement ps=con.prepareStatement("insert into logintable values(?,?)");
				ps.setString(1, spc.getEmailid());
				ps.setString(2, spc.getPassword());
				
				z=ps.executeUpdate();
				ps.close();
				con.close();
			
			
			
			return z;
		}
	public int insertrecord(spcorporate spc) throws SQLException
	{
		int z=0;
			Connection con=dao.createConnection();
			PreparedStatement ps=con.prepareStatement("insert into tab values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, spc.getRegno());
			ps.setString(2, spc.getName());
			ps.setString(3, spc.getGender());
			ps.setString(4, spc.getEmail());
			ps.setString(5, spc.getMobile());
			ps.setString(6, spc.getCourse());
			ps.setString(7, spc.getYear());
			ps.setString(8, spc.getClg());
			ps.setString(9, spc.getCity());
			z=ps.executeUpdate();
			ps.close();
			con.close();
		    
		return z;
		}
	public int insert(spcorporate spc) throws SQLException
	{
		int z=0;
			Connection con=dao.createConnection();
			PreparedStatement ps=con.prepareStatement("insert into worker values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, spc.getWorkerid());
			ps.setString(2, spc.getName());
			ps.setString(3, spc.getGender());
			ps.setString(4, spc.getEmail());
			ps.setString(5, spc.getMobile());
			ps.setString(6, spc.getCourse());
			ps.setString(7, spc.getYear());
			ps.setString(8, spc.getCom());
			ps.setString(9, spc.getCity());
			z=ps.executeUpdate();
			ps.close();
			con.close();
		    
		return z;
		}


		}



