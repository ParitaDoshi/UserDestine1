package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="offer") 
public class OfferVO {
	
	@Id
	@Column(name="offerid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int offerid;
	
	@Column(name="offername")
	private String offername; 
	
	@Column(name=" offerdescription")
	private String offerdescription;
	
	@Column(name="offerdeletestatus")
	private String offerdeletestatus;
	
	@Column(name=" offerdateto")
	private String offerdateto;
	
	@Column(name="offerdatefrom")
	private String offerdatefrom;
	
	@Column(name=" offertimeto")
	private String offertimeto;
	
	@Column(name="offertimefrom")
	private String offertimefrom;
	
	@ManyToOne
	private SubCategoryVO subcategoryfVO;
	
	@ManyToOne
	private CategoryVO categoryforeignkeyvo;

	@ManyToOne
	private RegistrationVO registrationfVO;

	public int getOfferid() {
		return offerid;
	}

	public void setOfferid(int offerid) {
		this.offerid = offerid;
	}

	public String getOffername() {
		return offername;
	}

	public void setOffername(String offername) {
		this.offername = offername;
	}

	public String getOfferdescription() {
		return offerdescription;
	}

	public void setOfferdescription(String offerdescription) {
		this.offerdescription = offerdescription;
	}

	public String getOfferdeletestatus() {
		return offerdeletestatus;
	}

	public void setOfferdeletestatus(String offerdeletestatus) {
		this.offerdeletestatus = offerdeletestatus;
	}

	public String getOfferdateto() {
		return offerdateto;
	}

	public void setOfferdateto(String offerdateto) {
		this.offerdateto = offerdateto;
	}

	public String getOfferdatefrom() {
		return offerdatefrom;
	}

	public void setOfferdatefrom(String offerdatefrom) {
		this.offerdatefrom = offerdatefrom;
	}

	public String getOffertimeto() {
		return offertimeto;
	}

	public void setOffertimeto(String offertimeto) {
		this.offertimeto = offertimeto;
	}

	public String getOffertimefrom() {
		return offertimefrom;
	}

	public void setOffertimefrom(String offertimefrom) {
		this.offertimefrom = offertimefrom;
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

	public RegistrationVO getRegistrationfVO() {
		return registrationfVO;
	}

	public void setRegistrationfVO(RegistrationVO registrationfVO) {
		this.registrationfVO = registrationfVO;
	}


}
