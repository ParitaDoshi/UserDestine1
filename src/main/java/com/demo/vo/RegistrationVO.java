package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ownerregistration") 
public class RegistrationVO {
	
	@Id
	@Column(name="ownerregistrationid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ownerregistrationid;
	
	@Column(name="mobileno")
	private String mobileno; 
	
	@Column(name="emailid")
	private String emailid;
	
	@Column(name="ownershopname")
	private String ownershopname;
	
	@Column(name="address")
	private String address;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="firstname")
	private String firstname; 
	
	@Column(name="lastname")
	private String lastname; 
	
	@Column(name="shopdescription")
	private String shopdescription;
	
	@Column(name="shopdeletestatus")
	private String shopdeletestatus;

	@Column(name="shopProfilePhotoName")
	private String shopProfilePhotoName;
	
	@Column(name="shopProfilePhotoPath")
	private String shopProfilePhotoPath;
	
	@ManyToOne
	private AreaVO areafVO;
	
	@ManyToOne
	private CityVO cityfVO;
	
	@ManyToOne
	private LoginVO loginfvo;

	@ManyToOne
	private SubCategoryVO subcategoryfVO;
	
	@ManyToOne
	private CategoryVO categoryforeignkeyvo;

	public int getOwnerregistrationid() {
		return ownerregistrationid;
	}

	public void setOwnerregistrationid(int ownerregistrationid) {
		this.ownerregistrationid = ownerregistrationid;
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

	public String getOwnershopname() {
		return ownershopname;
	}

	public void setOwnershopname(String ownershopname) {
		this.ownershopname = ownershopname;
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

	public String getShopdescription() {
		return shopdescription;
	}

	public void setShopdescription(String shopdescription) {
		this.shopdescription = shopdescription;
	}

	public String getShopdeletestatus() {
		return shopdeletestatus;
	}

	public void setShopdeletestatus(String shopdeletestatus) {
		this.shopdeletestatus = shopdeletestatus;
	}

	public String getShopProfilePhotoName() {
		return shopProfilePhotoName;
	}

	public void setShopProfilePhotoName(String shopProfilePhotoName) {
		this.shopProfilePhotoName = shopProfilePhotoName;
	}

	public String getShopProfilePhotoPath() {
		return shopProfilePhotoPath;
	}

	public void setShopProfilePhotoPath(String shopProfilePhotoPath) {
		this.shopProfilePhotoPath = shopProfilePhotoPath;
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

	public SubCategoryVO getSubcategoryfVO() {
		return subcategoryfVO;
	}

	public void setSubcategoryfVO(SubCategoryVO subcategoryfVO) {
		this.subcategoryfVO = subcategoryfVO;
	}

	public CategoryVO getCategoryforeignkeyvo() {
		return categoryforeignkeyvo;
	}

	public void setCategoryforeignkeyvo(CategoryVO categoryforeignkeyvo) {
		this.categoryforeignkeyvo = categoryforeignkeyvo;
	}
	
	

}
