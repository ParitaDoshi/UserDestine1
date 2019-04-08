package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="subcategory") 
public class SubCategoryVO {
	
	@ManyToOne
	private CategoryVO categoryforeignkeyvo;
	
	
	@Id
	@Column(name="subcategoryid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int subcategoryid;
	
	@Column(name="subcategoryname")
	private String subcategoryname; 
	
	@Column(name="subcategorydescription")
	private String subcategorydescription;
	
	@Column(name="subcategorydeletestatus")
	private String subcategorydeletestatus;

	public CategoryVO getCategoryforeignkeyvo() {
		return categoryforeignkeyvo;
	}

	public void setCategoryforeignkeyvo(CategoryVO categoryforeignkeyvo) {
		this.categoryforeignkeyvo = categoryforeignkeyvo;
	}

	public int getSubcategoryid() {
		return subcategoryid;
	}

	public void setSubcategoryid(int subcategoryid) {
		this.subcategoryid = subcategoryid;
	}

	public String getSubcategoryname() {
		return subcategoryname;
	}

	public void setSubcategoryname(String subcategoryname) {
		this.subcategoryname = subcategoryname;
	}

	public String getSubcategorydescription() {
		return subcategorydescription;
	}

	public void setSubcategorydescription(String subcategorydescription) {
		this.subcategorydescription = subcategorydescription;
	}

	public String getSubcategorydeletestatus() {
		return subcategorydeletestatus;
	}

	public void setSubcategorydeletestatus(String subcategorydeletestatus) {
		this.subcategorydeletestatus = subcategorydeletestatus;
	}
	
	
}
