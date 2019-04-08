package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complain")
public class ComplainVO {
	
	

	@Id
	@Column(name="complainid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int complainid;
	
	@Column(name="complaintitle")
	private String complaintitle;
	
	@Column(name="complaidescription")
	private String complaidescription;
	
	@Column(name="complaindeletestatus")
	private String complaindeletestatus;
	
	@Column(name="complainReplyStatus")
	private String complainReplyStatus;
	
	@Column(name="replyComplainDescription")
	private String replyComplainDescription;
	
	@Column(name="complainDate")
	private String complainDate;

	@Column(name="complainTime")
	private String complainTime;
	
	@ManyToOne LoginVO fromId;
	
	@ManyToOne LoginVO toId;

	public int getComplainid() {
		return complainid;
	}

	public void setComplainid(int complainid) {
		this.complainid = complainid;
	}

	public String getComplaintitle() {
		return complaintitle;
	}

	public void setComplaintitle(String complaintitle) {
		this.complaintitle = complaintitle;
	}

	public String getComplaidescription() {
		return complaidescription;
	}

	public void setComplaidescription(String complaidescription) {
		this.complaidescription = complaidescription;
	}

	public String getComplaindeletestatus() {
		return complaindeletestatus;
	}

	public void setComplaindeletestatus(String complaindeletestatus) {
		this.complaindeletestatus = complaindeletestatus;
	}

	public String getComplainReplyStatus() {
		return complainReplyStatus;
	}

	public void setComplainReplyStatus(String complainReplyStatus) {
		this.complainReplyStatus = complainReplyStatus;
	}

	public String getReplyComplainDescription() {
		return replyComplainDescription;
	}

	public void setReplyComplainDescription(String replyComplainDescription) {
		this.replyComplainDescription = replyComplainDescription;
	}

	public String getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}

	public String getComplainTime() {
		return complainTime;
	}

	public void setComplainTime(String complainTime) {
		this.complainTime = complainTime;
	}

	public LoginVO getFromId() {
		return fromId;
	}

	public void setFromId(LoginVO fromId) {
		this.fromId = fromId;
	}

	public LoginVO getToId() {
		return toId;
	}

	public void setToId(LoginVO toId) {
		this.toId = toId;
	}
	
	

}
