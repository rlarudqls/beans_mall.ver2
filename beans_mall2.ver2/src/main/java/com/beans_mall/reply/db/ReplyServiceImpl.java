package com.beans_mall.reply.db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.bean.model.PageDTO;
import com.beans_mall.reply.dao.KKBReplyDAO;
import com.beans_mall.reply.model.ReplyDTO;
import com.beans_mall.reply.model.ReplyPageDTO;
import com.beans_mall.reply.model.UpdateReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private KKBReplyDAO kkbReplyDAO;

	/* 댓글 등록 */
	@Override
	public int enrollReply(ReplyDTO dto) {
		int result = kkbReplyDAO.enrollReply(dto);
		setRating(dto.getBeanId());
		return result;
	}

	/* 댓글 존재 체크 */
	@Override
	public String checkReply(ReplyDTO dto) {
		Integer result = kkbReplyDAO.checkReply(dto);
		if (result == null) {
			return "0";
		} else {
			return "1";
		}
	}

	@Override
	public ReplyPageDTO replyList(CriteriaVO cri) {
		ReplyPageDTO dto = new ReplyPageDTO();
		dto.setList(kkbReplyDAO.getReplyList(cri));
		dto.setPageInfo(new PageDTO(cri, kkbReplyDAO.getReplyTotal(cri.getBeanId())));
		return dto;
	}

	@Override
	public int updateReply(ReplyDTO dto) {
		int result = kkbReplyDAO.updateReply(dto);
		setRating(dto.getBeanId());
		return result;
	}

	@Override
	public ReplyDTO getUpdateReply(int replyId) {
		return kkbReplyDAO.getUpdateReply(replyId);
	}

	@Override
	public int deleteReply(ReplyDTO dto) {
		int result = kkbReplyDAO.deleteReply(dto.getReplyId());
		setRating(dto.getBeanId());
		return result;
	}

	public void setRating(int beanId) {
		Double ratingAvg = kkbReplyDAO.getRatingAverage(beanId);
		if (ratingAvg == null) {
			ratingAvg = 0.0;
		}
		ratingAvg = (double) (Math.round(ratingAvg * 10));
		ratingAvg = ratingAvg / 10;
		UpdateReplyDTO urd = new UpdateReplyDTO();
		urd.setBeanId(beanId);
		urd.setRatingAvg(ratingAvg);
		kkbReplyDAO.updateRating(urd);
	}
}
