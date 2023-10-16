package com.beans_mall.admin.model;

import java.util.Date;

public class AuthorVO {

	/* 판매자 아이디 */
	private int authorId;

	/* 판매자 이름 */
	private String authorName;

	/* 국가 id */
	private String nationId;

	/* 판매자 국가 */
	private String nationName;

	/* 판매자 소개 */
	private String authorIntro;

	/* 등록 날짜 */
	private Date regDate;

	/* 수정 날짜 */
	private Date updateDate;

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getNationId() {
		return nationId;
	}

	public void setNationId(String nationId) {
		this.nationId = nationId;
	}

	public String getNationName() {
		return nationName;
	}

	public void setNationName(String nationName) {
		this.nationName = nationName;
	}

	public String getAuthorIntro() {
		return authorIntro;
	}

	public void setAuthorIntro(String authorIntro) {
		this.authorIntro = authorIntro;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}
