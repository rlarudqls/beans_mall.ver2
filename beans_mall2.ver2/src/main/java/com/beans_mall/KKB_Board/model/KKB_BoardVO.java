package com.beans_mall.KKB_Board.model;

import java.util.Date;

public class KKB_BoardVO {

    private final int id;
    private final String title;
    private final String content;
    private final String writer;
    private final Date createdAt;

    public KKB_BoardVO(Builder builder) {
        this.id = builder.id;
        this.title = builder.title;
        this.content = builder.content;
        this.writer = builder.writer;
        this.createdAt = builder.createdAt;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getWriter() {
        return writer;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public static Builder builder(int id, String title, String content, String writer, Date createdAt) {
        return new Builder(id, title, content, writer, createdAt);
    }

    public static class Builder {
        private final int id;
        private String title;
        private String content;
        private String writer;
        private Date createdAt;

        public Builder(int id, String title, String content, String writer, Date createdAt) {
            this.id = id;
            this.title = title;
            this.content = content;
            this.writer = writer;
            this.createdAt = createdAt;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder content(String content) {
            this.content = content;
            return this;
        }

        public Builder writer(String writer) {
            this.writer = writer;
            return this;
        }

        public Builder createdAt(Date createdAt) {
            this.createdAt = createdAt;
            return this;
        }

        public KKB_BoardVO build() {
            return new KKB_BoardVO(this);
        }
    }

    @Override
    public String toString() {
        return "KKB_BoardVO [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer
                + ", createdAt=" + createdAt + "]";
    }

	public void setId(int id2) {
		
	}
}
