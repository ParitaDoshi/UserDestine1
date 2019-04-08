package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="login") 
public class LoginVO {
	
	@Id
	@Column(name="loginid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int loginid;
	
	
	@Column(name="username")
	private String username; 
	
	@Column(name="password")
	private String password; 
	
	
	@Column(name="enable")
	private int enable; 
	
	@Column(name="role")
	private String role;

	public int getLoginid() {
		return loginid;
	}

	public void setLoginid(int loginid) {
		this.loginid = loginid;
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

	public int getEnable() {
		return enable;
	}

	public void setEnable(int enable) {
		this.enable = enable;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	

}
