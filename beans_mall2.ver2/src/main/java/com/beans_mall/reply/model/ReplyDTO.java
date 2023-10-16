//regDate 필드에 대한 JsonFormat 주석을 사용하여 날짜 형식을 지정하였습니다.

//@JsonFormat 주석을 사용하여 JSON 직렬화 시 regDate 필드의 날짜 형식을 지정함
package com.beans_mall.reply.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;

public class ReplyDTO {

    private int replyId;
    private int beanId;
    private String memberId;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date regDate;

    private String content;
    private double rating;

    public int getReplyId() {
        return replyId;
    }

    public void setReplyId(int replyId) {
        this.replyId = replyId;
    }

    public int getBeanId() {
        return beanId;
    }

    public void setBeanId(int beanId) {
        this.beanId = beanId;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "ReplyDTO [replyId=" + replyId + ", beanId=" + beanId + ", memberId=" + memberId + ", regDate=" + regDate
                + ", content=" + content + ", rating=" + rating + "]";
    }
}
