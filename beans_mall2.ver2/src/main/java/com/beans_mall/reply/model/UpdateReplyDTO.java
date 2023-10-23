//UpdateReplyDTO 클래스의 목적을 문서화
// 클래스의 목적과 사용 예제를 설명하는 자바독 주석을 추가하여 다른 개발자가 클래스를 쉽게 이해할 수 있도록 도움을 주었습니다.


package com.beans_mall.reply.model;

/**
 * 업데이트할 댓글 평균 평점과 관련된 데이터를 나타내는 DTO 클래스입니다.
 */
public class UpdateReplyDTO {
    
    /**
     * 업데이트할 상품(댓글 대상)의 고유 식별자(ID).
     */
    private int beanId;

    /**
     * 업데이트된 댓글 평균 평점.
     */
    private double ratingAvg;

    /**
     * UpdateReplyDTO 객체를 생성합니다.
     */
    public UpdateReplyDTO() {
        this.beanId = beanId;
        this.ratingAvg = ratingAvg;
    }

    /**
     * 업데이트할 상품(댓글 대상)의 고유 식별자(ID)를 반환합니다.
     * @return 상품 ID.
     */
    public int getBeanId() {
        return beanId;
    }

    /**
     * 업데이트할 댓글 평균 평점을 반환합니다.
     * @return 댓글 평균 평점.
     */
    public double getRatingAvg() {
        return ratingAvg;
    }

    @Override
    public String toString() {
        return "UpdateReplyDTO [beanId=" + beanId + ", ratingAvg=" + ratingAvg + "]";
    }

	public void setBeanId(int beanId2) {
		// TODO Auto-generated method stub
		
	}

	public void setRatingAvg(Double ratingAvg2) {
		// TODO Auto-generated method stub
		
	}
}
