package com.beans_mall.vo;

import java.util.Date;

public class KKB_BoardVO {
    private int id;
    private String title;
    private String content;
    private String writer;
    private Date createdAt;

    public KKB_BoardVO() {
    }

    public KKB_BoardVO(int id, String title, String content, String writer, Date createdAt) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "kkb_Board [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer
                + ", createdAt=" + createdAt + "]";
    }
}
