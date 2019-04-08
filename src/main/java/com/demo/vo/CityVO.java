package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="city") 
public class CityVO {
	
	@Id
	@Column(name="cityid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cityid;
	
	@Column(name=" cityname")
	private String cityname; 
	

	@Column(name="citydescription")
	private String citydescription;
	
	@Column(name="citydeletestatus")
	private String citydeletestatus;
	

	@Column(name="cityLatitude")
	private String cityLatitude;
	
	@Column(name="cityLongitude")
	private String cityLongitude;

	public int getCityid() {
		return cityid;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public String getCitydescription() {
		return citydescription;
	}

	public void setCitydescription(String citydescription) {
		this.citydescription = citydescription;
	}

	public String getCitydeletestatus() {
		return citydeletestatus;
	}

	public void setCitydeletestatus(String citydeletestatus) {
		this.citydeletestatus = citydeletestatus;
	}

	public String getCityLatitude() {
		return cityLatitude;
	}

	public void setCityLatitude(String cityLatitude) {
		this.cityLatitude = cityLatitude;
	}

	public String getCityLongitude() {
		return cityLongitude;
	}

	public void setCityLongitude(String cityLongitude) {
		this.cityLongitude = cityLongitude;
	}
	
	
	
	
	

}
