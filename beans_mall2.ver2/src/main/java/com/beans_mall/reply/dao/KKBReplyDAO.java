package com.beans_mall.reply.dao;

import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.reply.model.ReplyDTO;
import com.beans_mall.reply.model.UpdateReplyDTO;

import java.util.List;

public interface KKBReplyDAO {

    EnrollReplyBuilder enrollReply(ReplyDTO dto);

    CheckReplyBuilder checkReply(ReplyDTO dto);

    GetReplyListBuilder getReplyList(CriteriaVO cri);

    GetReplyTotalBuilder getReplyTotal(int beanId);

    UpdateReplyBuilder updateReply(ReplyDTO dto);

    GetUpdateReplyBuilder getUpdateReply(int replyId);

    DeleteReplyBuilder deleteReply(int replyId);

    GetRatingAverageBuilder getRatingAverage(int beanId);

    UpdateRatingBuilder updateRating(UpdateReplyDTO dto);

    interface EnrollReplyBuilder {
        int buildEnrollReply();
    }

    interface CheckReplyBuilder {
        Integer buildCheckReply();
    }

    interface GetReplyListBuilder {
        List<ReplyDTO> buildGetReplyList();
    }

    interface GetReplyTotalBuilder {
        int buildGetReplyTotal();
    }

    interface UpdateReplyBuilder {
        int buildUpdateReply();
    }

    interface GetUpdateReplyBuilder {
        ReplyDTO buildGetUpdateReply();
    }

    interface DeleteReplyBuilder {
        int buildDeleteReply();
    }

    interface GetRatingAverageBuilder {
        Double buildGetRatingAverage();
    }

    interface UpdateRatingBuilder {
        int buildUpdateRating();
    }
}
