package com.beans_mall.vo;

public class AttachImageVO {

	/* 경로 */
	private String uploadPath;

	/* uuId */
	private String uuId;

	/* 파일 이름 */
	private String fileName;

	/* 상품 id */
	private int beanId;

	public String getUploadPath() {
		return uploadPath;
	}

	private String imageUrl;

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getUuid() {
		return uuId;
	}

	public void setUuid(String uuId) {
		this.uuId = uuId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getBeanId() {
		return beanId;
	}

	public void setBeanId(int beanId) {
		this.beanId = beanId;
	}

	@Override
	public String toString() {
		return "AttachImageVO [uploadPath=" + uploadPath + ", uuId=" + uuId + ", fileName=" + fileName + ", beanId="
				+ beanId + "]";
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
}
