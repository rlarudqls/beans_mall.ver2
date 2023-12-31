package com.beans_mall.attach.model;

public class AttachImageVO {

    private String uploadPath;
    private String uuId;
    private final String fileName;
    private final int beanId;
    private String imageUrl;

    public AttachImageVO(Builder builder) {
        this.uploadPath = builder.uploadPath;
        this.uuId = builder.uuId;
        this.fileName = builder.fileName;
        this.beanId = builder.beanId;
        this.imageUrl = builder.imageUrl;
    }

    public String getUploadPath() {
        return uploadPath;
    }

    public String getUuid() {
        return uuId;
    }

    public String getFileName() {
        return fileName;
    }

    public int getBeanId() {
        return beanId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setUploadPath(String uploadPath) {
        this.uploadPath = uploadPath;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public void setUuid(String uuid) {
        this.uuId = uuid;
    }

    public static Builder builder(String uuId, String fileName, int beanId) {
        return new Builder(uuId, fileName, beanId);
    }

    public static class Builder {
        private final String uuId;
        private final String fileName;
        private final int beanId;
        private String uploadPath;
        private String imageUrl;

        public Builder(String uuId, String fileName, int beanId) {
            this.uuId = uuId;
            this.fileName = fileName;
            this.beanId = beanId;
        }

        public Builder uploadPath(String uploadPath) {
            this.uploadPath = uploadPath;
            return this;
        }

        public Builder imageUrl(String imageUrl) {
            this.imageUrl = imageUrl;
            return this;
        }

        public AttachImageVO build() {
            return new AttachImageVO(this);
        }
    }

	public void setFileName(String uploadFileName) {
		// TODO Auto-generated method stub
		
	}
}
