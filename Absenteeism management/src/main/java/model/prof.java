package model;

public class prof {
	private String id;
private String firstname;
private String lastname;
private String email;
private String username;
private String password;
public String getFirstname() {
	return firstname;
}

public String getId() {
	return id;
}

public void setId(String id ){
	this.id =id;      
}

public void setFirstname(String firstname) {
	this.firstname = firstname;
	
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
