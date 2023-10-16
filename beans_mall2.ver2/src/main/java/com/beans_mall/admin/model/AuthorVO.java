package com.beans_mall.admin.model;

import java.util.Date;

public class AuthorVO {

    private final int authorId;
    private final String authorName;
    private final String nationId;
    private final String nationName;
    private final String authorIntro;
    private final Date regDate;
    private final Date updateDate;

    private AuthorVO(Builder builder) {
        this.authorId = builder.authorId;
        this.authorName = builder.authorName;
        this.nationId = builder.nationId;
        this.nationName = builder.nationName;
        this.authorIntro = builder.authorIntro;
        this.regDate = builder.regDate;
        this.updateDate = builder.updateDate;
    }

    public int getAuthorId() {
        return authorId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public String getNationId() {
        return nationId;
    }

    public String getNationName() {
        return nationName;
    }

    public String getAuthorIntro() {
        return authorIntro;
    }

    public Date getRegDate() {
        return regDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public static Builder builder(int authorId, String authorName) {
        return new Builder(authorId, authorName);
    }

    public static class Builder {
        private final int authorId;
        private final String authorName;
        private String nationId;
        private String nationName;
        private String authorIntro;
        private Date regDate;
        private Date updateDate;

        public Builder(int authorId, String authorName) {
            this.authorId = authorId;
            this.authorName = authorName;
        }

        public Builder nationId(String nationId) {
            this.nationId = nationId;
            return this;
        }

        public Builder nationName(String nationName) {
            this.nationName = nationName;
            return this;
        }

        public Builder authorIntro(String authorIntro) {
            this.authorIntro = authorIntro;
            return this;
        }

        public Builder regDate(Date regDate) {
            this.regDate = regDate;
            return this;
        }

        public Builder updateDate(Date updateDate) {
            this.updateDate = updateDate;
            return this;
        }

        public AuthorVO build() {
            return new AuthorVO(this);
        }
    }
}
