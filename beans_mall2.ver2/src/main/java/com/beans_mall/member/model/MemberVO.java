package com.beans_mall.member.model;

public class MemberVO {

    private final String memberId;
    private String memberPw;
    private String memberName;
    private String memberMail;
    private String memberAddr1;
    private String memberAddr2;
    private String memberAddr3;
    private int adminCk;
    private int regDate;
    private int money;
    private int point;

    public MemberVO(Builder builder) {
        this.memberId = builder.memberId;
        this.memberPw = builder.memberPw;
        this.memberName = builder.memberName;
        this.memberMail = builder.memberMail;
        this.memberAddr1 = builder.memberAddr1;
        this.memberAddr2 = builder.memberAddr2;
        this.memberAddr3 = builder.memberAddr3;
        this.adminCk = builder.adminCk;
        this.regDate = builder.regDate;
        this.money = builder.money;
        this.point = builder.point;
    }

    public String getMemberId() {
        return memberId;
    }

    public String getMemberPw() {
        return memberPw;
    }

    public void setMemberPw(String memberPw) {
        this.memberPw = memberPw;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberMail() {
        return memberMail;
    }

    public void setMemberMail(String memberMail) {
        this.memberMail = memberMail;
    }

    public String getMemberAddr1() {
        return memberAddr1;
    }

    public void setMemberAddr1(String memberAddr1) {
        this.memberAddr1 = memberAddr1;
    }

    public String getMemberAddr2() {
        return memberAddr2;
    }

    public void setMemberAddr2(String memberAddr2) {
        this.memberAddr2 = memberAddr2;
    }

    public String getMemberAddr3() {
        return memberAddr3;
    }

    public void setMemberAddr3(String memberAddr3) {
        this.memberAddr3 = memberAddr3;
    }

    public int getAdminCk() {
        return adminCk;
    }

    public void setAdminCk(int adminCk) {
        this.adminCk = adminCk;
    }

    public int getRegDate() {
        return regDate;
    }

    public void setRegDate(int regDate) {
        this.regDate = regDate;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public static Builder builder(String memberId) {
        return new Builder(memberId);
    }

    public static class Builder {
        private final String memberId;
        private String memberPw = "";
        private String memberName = "";
        private String memberMail = "";
        private String memberAddr1 = "";
        private String memberAddr2 = "";
        private String memberAddr3 = "";
        private int adminCk = 0;
        private int regDate = 0;
        private int money = 0;
        private int point = 0;

        public Builder(String memberId) {
            this.memberId = memberId;
        }

        public Builder memberPw(String memberPw) {
            this.memberPw = memberPw;
            return this;
        }

        public Builder memberName(String memberName) {
            this.memberName = memberName;
            return this;
        }

        public Builder memberMail(String memberMail) {
            this.memberMail = memberMail;
            return this;
        }

        public Builder memberAddr1(String memberAddr1) {
            this.memberAddr1 = memberAddr1;
            return this;
        }

        public Builder memberAddr2(String memberAddr2) {
            this.memberAddr2 = memberAddr2;
            return this;
        }

        public Builder memberAddr3(String memberAddr3) {
            this.memberAddr3 = memberAddr3;
            return this;
        }

        public Builder adminCk(int adminCk) {
            this.adminCk = adminCk;
            return this;
        }

        public Builder regDate(int regDate) {
            this.regDate = regDate;
            return this;
        }

        public Builder money(int money) {
            this.money = money;
            return this;
        }

        public Builder point(int point) {
            this.point = point;
            return this;
        }

        public MemberVO build() {
            return new MemberVO(this);
        }
    }

    @Override
    public String toString() {
        return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
                + ", memberMail=" + memberMail + ", memberAddr1=" + memberAddr1 + ", memberAddr2=" + memberAddr2
                + ", memberAddr3=" + memberAddr3 + ", adminCk=" + adminCk + ", regDate=" + regDate + ", money=" + money
                + ", point=" + point + "]";
    }
}
