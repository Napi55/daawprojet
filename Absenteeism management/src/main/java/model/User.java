package model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
	protected int id;
	protected String name;
	protected String email;
	protected String groupe;
	
	public User() {
	}
	
	public User(String name, String email, String country) {
		super();
		this.name = name;
		this.email = email;
		this.groupe = country;
	}

	public User(int id, String name, String email, String groupe) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.groupe = groupe;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getGroupe() {
		return groupe;
	}

	public void setGroupe(String groupe) {
		this.groupe = groupe;
	}

}