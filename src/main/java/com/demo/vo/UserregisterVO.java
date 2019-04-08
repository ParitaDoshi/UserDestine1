package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="userregistration") 
public class UserregisterVO {
	
	
	@Id
	@Column(name="userregisterid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userregisterid;
	
	@Column(name="mobileno")
	private String mobileno; 
	
	@Column(name="emailid")
	private String emailid;
	
	@Column(name="address")
	private String address;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="firstname")
	private String firstname; 
	
	@Column(name="lastname")
	private String lastname; 

	
	@ManyToOne
	private AreaVO areafVO;
	
	@ManyToOne
	private CityVO cityfVO;

	@ManyToOne
	private LoginVO loginfvo;

	public int getUserregisterid() {
		return userregisterid;
	}

	public void setUserregisterid(int userregisterid) {
		this.userregisterid = userregisterid;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFirstname() {
		return firstname;
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

	public AreaVO getAreafVO() {
		return areafVO;
	}

	public void setAreafVO(AreaVO areafVO) {
		this.areafVO = areafVO;
	}

	public CityVO getCityfVO() {
		return cityfVO;
	}

	public void setCityfVO(CityVO cityfVO) {
		this.cityfVO = cityfVO;
	}

	public LoginVO getLoginfvo() {
		return loginfvo;
	}

	public void setLoginfvo(LoginVO loginfvo) {
		this.loginfvo = loginfvo;
	}

	


}
