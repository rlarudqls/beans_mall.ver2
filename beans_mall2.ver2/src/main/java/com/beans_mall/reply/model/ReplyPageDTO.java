//ReplyDTO 목록을 변경할 수 없도록 보호하였습니다.
//list 필드는 현재 List<ReplyDTO>로 선언되어 있으며, 이를 외부에서 변경할 수 있습니다. 이를 방지하기 위해 unmodifiableList 메서드를 사용하여 변경 불가능한 리스트로 변환함


package com.beans_mall.reply.model;

import java.util.Collections;
import java.util.List;

import com.beans_mall.bean.model.PageDTO;
import com.beans_mall.reply.dao.KKBReplyDAO.GetReplyListBuilder;

public class ReplyPageDTO {
    
    private List<ReplyDTO> list;
    
    private PageDTO pageInfo;

    public ReplyPageDTO() {
        // 기본 생성자
    }

    public List<ReplyDTO> getList() {
        return Collections.unmodifiableList(list);
    }

    public void setList(GetReplyListBuilder getReplyListBuilder) {
        this.list = (List<ReplyDTO>) getReplyListBuilder;
    }

    public PageDTO getPageInfo() {
        return pageInfo;
    }

    public void setPageInfo(PageDTO pageInfo) {
        this.pageInfo = pageInfo;
    }

    @Override
    public String toString() {
        return "ReplyPageDTO [list=" + list + ", pageInfo=" + pageInfo + "]";
    }
}
