package codemons.transporter.model.user;

import java.io.Serializable;


import javax.persistence.*;

@Entity
@Table(name = "users")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "username")
    private String username;   

	@Column(name = "password")
    private String password;
    
	@Column(name ="enabled")
	private int enabled;
	
	public User(){
		
	}
	
	public User(User user) {
	        this.username = user.username;
	        this.password = user.password;
	        this.enabled=user.enabled;        
	}
	
	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
  
}