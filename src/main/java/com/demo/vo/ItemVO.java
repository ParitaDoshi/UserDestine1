package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="item") 
public class ItemVO {
	
	@Id
	@Column(name="itemid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int itemid;
	
	@Column(name=" itemname")
	private String itemname; 
	
	@Column(name="itemprice")
	private String itemprice; 
	
	
	@Column(name="itemsize")
	private String itemsize; 
	
	
	@Column(name="itemdescription")
	private String itemdescription; 
	
	
	@Column(name="itemtype")
	private String itemtype; 
	
	@Column(name="itemProfilePhotoName")
	private String itemProfilePhotoName;
	
	@Column(name="itemProfilePhotoPath")
	private String itemProfilePhotoPath;
	
	

	@Column(name="itemdeletestatus")
	private String itemdeletestatus; 
	
	@ManyToOne
	private SubCategoryVO subcategoryfVO;
	
	@ManyToOne
	private CategoryVO categoryforeignkeyvo;
	
	@ManyToOne
	private LoginVO loginfvo;

	
	@ManyToOne
	private RegistrationVO registrationfVO;


	public int getItemid() {
		return itemid;
	}


	public void setItemid(int itemid) {
		this.itemid = itemid;
	}


	public String getItemname() {
		return itemname;
	}


	public void setItemname(String itemname) {
		this.itemname = itemname;
	}


	public String getItemprice() {
		return itemprice;
	}


	public void setItemprice(String itemprice) {
		this.itemprice = itemprice;
	}


	public String getItemsize() {
		return itemsize;
	}


	public void setItemsize(String itemsize) {
		this.itemsize = itemsize;
	}


	public String getItemdescription() {
		return itemdescription;
	}


	public void setItemdescription(String itemdescription) {
		this.itemdescription = itemdescription;
	}


	public String getItemtype() {
		return itemtype;
	}


	public void setItemtype(String itemtype) {
		this.itemtype = itemtype;
	}


	public String getItemProfilePhotoName() {
		return itemProfilePhotoName;
	}


	public void setItemProfilePhotoName(String itemProfilePhotoName) {
		this.itemProfilePhotoName = itemProfilePhotoName;
	}


	public String getItemProfilePhotoPath() {
		return itemProfilePhotoPath;
	}


	public void setItemProfilePhotoPath(String itemProfilePhotoPath) {
		this.itemProfilePhotoPath = itemProfilePhotoPath;
	}


	public String getItemdeletestatus() {
		return itemdeletestatus;
	}


	public void setItemdeletestatus(String itemdeletestatus) {
		this.itemdeletestatus = itemdeletestatus;
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


	public LoginVO getLoginfvo() {
		return loginfvo;
	}


	public void setLoginfvo(LoginVO loginfvo) {
		this.loginfvo = loginfvo;
	}


	public RegistrationVO getRegistrationfVO() {
		return registrationfVO;
	}


	public void setRegistrationfVO(RegistrationVO registrationfVO) {
		this.registrationfVO = registrationfVO;
	}



}
