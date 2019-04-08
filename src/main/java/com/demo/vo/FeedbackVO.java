package com.demo.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class FeedbackVO {
	
	
	@Id
	@Column(name="feedbackid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int feedbackid;
	
	@Column(name="feedback")
	private String feedback;
	
	@Column(name="feedbackmessage")
	private String feedbackmessage;
	
	@Column(name="feedbackdeletestatus")
	private String feedbackdeletestatus;
	
	@Column(name="feedbackDate")
	private String feedbackDate;
	
	@Column(name="feedbackTime")
	private String feedbackTime;
	
	@ManyToOne LoginVO fromId;
	
	@ManyToOne LoginVO toId;

	public int getFeedbackid() {
		return feedbackid;
	}

	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getFeedbackmessage() {
		return feedbackmessage;
	}

	public void setFeedbackmessage(String feedbackmessage) {
		this.feedbackmessage = feedbackmessage;
	}

	public String getFeedbackdeletestatus() {
		return feedbackdeletestatus;
	}

	public void setFeedbackdeletestatus(String feedbackdeletestatus) {
		this.feedbackdeletestatus = feedbackdeletestatus;
	}

	public String getFeedbackDate() {
		return feedbackDate;
	}

	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}

	public String getFeedbackTime() {
		return feedbackTime;
	}

	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
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
