	package praveen;
	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
public class workercorporatedao {
		public int insert(workercorporate wpc) throws SQLException
		{
			int z=0;
				Connection con=dao.createConnection();
				PreparedStatement ps=con.prepareStatement("insert into worker values(?,?,?,?,?,?,?,?,?)");
				ps.setInt(1, wpc.getWorkerid());
				ps.setString(2, wpc.getName());
				ps.setString(3, wpc.getGender());
				ps.setString(4, wpc.getEmail());
				ps.setString(5, wpc.getMobile());
				ps.setString(6, wpc.getCourse());
				ps.setString(7, wpc.getYear());
				ps.setString(8, wpc.getCom());
				ps.setString(9, wpc.getCity());
				z=ps.executeUpdate();
				ps.close();
				con.close();
			    
			return z;
			}

			}


