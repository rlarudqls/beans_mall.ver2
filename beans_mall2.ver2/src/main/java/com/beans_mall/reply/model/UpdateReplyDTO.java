package com.beans_mall.reply.model;


public class UpdateReplyDTO {
	
	private int beanId;
	
	private double ratingAvg;

	public int getBeanId() {
		return beanId;
	}

	public void setBeanId(int beanId) {
		this.beanId = beanId;
	}

	public double getRatingAvg() {
		return ratingAvg;
	}

	public void setRatingAvg(double ratingAvg) {
		this.ratingAvg = ratingAvg;
	}

	@Override
	public String toString() {
		return "UpdateReplyDTO [beanId=" + beanId + ", ratingAvg=" + ratingAvg + "]";
	}
	
}