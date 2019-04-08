package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="area") 
public class AreaVO {
	


	@Id
	@Column(name="areaid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int areaid;
	
	
	@Column(name="areaname")
	private String areaname; 
	
	@Column(name="arealatitude")
	private String arealatitude; 
	
	@Column(name="arealongitude")
	private String arealongitude; 
	
	@Column(name="areadescription")
	private String areadescription;
	
	@Column(name="areadeletestatus")
	private String areadeletestatus;
	
	@ManyToOne
	private CityVO cityforeignkeyvo;

	public int getAreaid() {
		return areaid;
	}

	public void setAreaid(int areaid) {
		this.areaid = areaid;
	}

	public String getAreaname() {
		return areaname;
	}

	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}

	public String getArealatitude() {
		return arealatitude;
	}

	public void setArealatitude(String arealatitude) {
		this.arealatitude = arealatitude;
	}

	public String getArealongitude() {
		return arealongitude;
	}

	public void setArealongitude(String arealongitude) {
		this.arealongitude = arealongitude;
	}

	public String getAreadescription() {
		return areadescription;
	}

	public void setAreadescription(String areadescription) {
		this.areadescription = areadescription;
	}

	public String getAreadeletestatus() {
		return areadeletestatus;
	}

	public void setAreadeletestatus(String areadeletestatus) {
		this.areadeletestatus = areadeletestatus;
	}

	public CityVO getCityforeignkeyvo() {
		return cityforeignkeyvo;
	}

	public void setCityforeignkeyvo(CityVO cityforeignkeyvo) {
		this.cityforeignkeyvo = cityforeignkeyvo;
	}
	


}
