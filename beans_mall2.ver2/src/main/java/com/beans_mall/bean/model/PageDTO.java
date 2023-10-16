package com.beans_mall.bean.model;

public class PageDTO {

    private final int pageStart;
    private final int pageEnd;
    private final boolean next;
    private final boolean prev;
    private final int total;
    private final CriteriaVO cri;

    private PageDTO(Builder builder) {
        this.pageStart = builder.pageStart;
        this.pageEnd = builder.pageEnd;
        this.next = builder.next;
        this.prev = builder.prev;
        this.total = builder.total;
        this.cri = builder.cri;
    }

    public int getPageStart() {
        return pageStart;
    }

    public int getPageEnd() {
        return pageEnd;
    }

    public boolean isNext() {
        return next;
    }

    public boolean isPrev() {
        return prev;
    }

    public int getTotal() {
        return total;
    }

    public CriteriaVO getCri() {
        return cri;
    }

    public static Builder builder(CriteriaVO cri, int total) {
        return new Builder(cri, total);
    }

    public static class Builder {
        private final CriteriaVO cri;
        private final int total;
        private int pageStart;
        private int pageEnd;
        private boolean next;
        private boolean prev;

        public Builder(CriteriaVO cri, int total) {
            this.cri = cri;
            this.total = total;

            this.pageEnd = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
            this.pageStart = this.pageEnd - 9;

            int realEnd = (int) (Math.ceil(total * 1.0 / cri.getAmount()));

            if (realEnd < pageEnd) {
                this.pageEnd = realEnd;
            }

            this.prev = this.pageStart > 1;
            this.next = this.pageEnd < realEnd;
        }

        public PageDTO build() {
            return new PageDTO(this);
        }
    }

    @Override
    public String toString() {
        return "PageDTO [pageStart=" + pageStart + ", pageEnd=" + pageEnd + ", next=" + next + ", prev=" + prev
                + ", total=" + total + ", cri=" + cri + "]";
    }
}
