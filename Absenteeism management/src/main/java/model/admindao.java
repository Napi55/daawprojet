package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class admindao {

	private Connection  connexion;

	public admindao() {
		this.connexion=null;		
	}
	
	
	
	public void connectDB() throws InstantiationException, IllegalAccessException  {
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// connexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/Absenteeism management","root","penine");
				connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/absenteeism management", "root", "penine");
		
			System.out.println("Connection avec succes a la base de donnees !");
			
			
		} catch (ClassNotFoundException e) {
			System.out.print("Driver non chargé...");
		} catch (SQLException e) {
			System.out.println("Incapable de connecter a la base de donnees...");
		}
		
		
		
		
		
		
	}
	
	public admin checkLogin(String username, String password)
			throws InstantiationException, IllegalAccessException    {
		
		String requet;
		PreparedStatement st;
		admin admin=null;
		
	
		try {
			 connectDB();
			requet="SELECT * FROM admin WHERE username = ? and password = ?";
			st=connexion.prepareStatement(requet);
			st.setString(1, username);
			st.setString(2, password);
			ResultSet result = st.executeQuery();
			if(result.next()) {
				admin=new admin();
				admin.setFirstname(result.getString("lastname"));
				admin.setLastname(result.getString("firstname"));
				admin.setEmail(result.getString("email"));
				admin.setUsername(result.getString("username"));
				admin.setPassword(result.getString("password"));
				
				st.close();
				System.out.println("succés !");
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
		
		return admin;	
	}
	
	
	
	
}
