package model;

import java.sql.*;

public class profdao {

	private Connection  connexion;

	public profdao() {
		this.connexion=null;		
	}
	
	
	
	public void connectDB()  {
		
		
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
	
	public prof checkLogin(String username, String password)
			    {
		
		String requet;
		PreparedStatement st;
		prof prof=null;
		
	
		try {
			 connectDB();
			requet="SELECT * FROM prof WHERE username = ? and password = ?";
			st=connexion.prepareStatement(requet);
			st.setString(1, username);
			st.setString(2, password);
			ResultSet result = st.executeQuery();
			if(result.next()) {
				prof=new prof();
				prof.setFirstname(result.getString("firstname"));
				prof.setLastname(result.getString("lastname"));
				prof.setEmail(result.getString("email"));
				prof.setUsername(result.getString("username"));
				prof.setPassword(result.getString("password"));
			String	id= Integer.toString(result.getInt("id"));
				prof.setId(id);
				st.close();
				System.out.println("succés !");
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
		
		return prof;	
	}
	
	public void UpdateProf(prof myprof,String n) throws SQLException, InstantiationException, IllegalAccessException {
		
		String requete;
		PreparedStatement st;
		
		 try {
			connectDB();
			
			requete="UPDATE `absenteeism management`.`prof` SET `firstname` = ?, `lastname` = ?, `email` = ? WHERE ( `id` =?);";       
			st = connexion.prepareStatement(requete);
			st.setString(1,myprof.getFirstname());
			st.setString(2,myprof.getLastname());
			st.setString(3,myprof.getEmail());
		st.setString(4, myprof.getUsername());
		int id=Integer.parseInt( myprof.getId());
		st.setInt(5,id);
			st.executeUpdate();
			st.close();
			System.out.println("succés Update !");
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
		
	}
	
	
}
