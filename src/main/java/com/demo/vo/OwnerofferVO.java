package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="owneroffer") 
public class OwnerofferVO {
	
	@Id
	@Column(name="offerid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int offerid;
	
	@Column(name="offername")
	private String offername; 
	
	@Column(name="offerdescription")
	private String offerdescription;
	
	@Column(name="offerdeletestatus")
	private String offerdeletestatus;
	
	@Column(name="offerdateto")
	private String offerdateto;
	
	@Column(name="offerdatefrom")
	private String offerdatefrom;
	
	@Column(name="offertimeto")
	private String offertimeto;
	
	@Column(name="offertimefrom")
	private String offertimefrom;
	
	@Column(name="offerDiscountPrice")
	private String offerDiscountPrice;
	
	@Column(name="offerFinalPrice")
	private String offerFinalPrice;
	
	
	@ManyToOne
	private SubCategoryVO subcategoryfVO;
	
	@ManyToOne
	private CategoryVO categoryforeignkeyvo;

	@ManyToOne
	private ItemVO itemfvo;
	
	@ManyToOne
	private LoginVO loginfvo;

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

	public String getOfferDiscountPrice() {
		return offerDiscountPrice;
	}

	public void setOfferDiscountPrice(String offerDiscountPrice) {
		this.offerDiscountPrice = offerDiscountPrice;
	}

	public String getOfferFinalPrice() {
		return offerFinalPrice;
	}

	public void setOfferFinalPrice(String offerFinalPrice) {
		this.offerFinalPrice = offerFinalPrice;
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

	public ItemVO getItemfvo() {
		return itemfvo;
	}

	public void setItemfvo(ItemVO itemfvo) {
		this.itemfvo = itemfvo;
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
