package com.beans_mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.beans_mall.db.ReplyService;
import com.beans_mall.dto.ReplyDTO;
import com.beans_mall.dto.ReplyPageDTO;
import com.beans_mall.vo.CriteriaVO;

@RestController
@RequestMapping("/reply")
public class ReplyController {

    private final ReplyService replyService;

    @Autowired
    public ReplyController(ReplyService replyService) {
        this.replyService = replyService;
    }

    /* 댓글 등록 */
    @PostMapping("/enroll")
    public void enrollReplyPOST(ReplyDTO dto) {
        replyService.enrollReply(dto);
    }

    /* 댓글 체크 */
    /* memberId, beanId 파라미터 */
    /* 존재 : 1 / 존재x : 0 */
    @PostMapping("/check")
    public String replyCheckPOST(ReplyDTO dto) {
        return replyService.checkReply(dto);
    }

    /* 댓글 페이징 */
    @GetMapping(value = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ReplyPageDTO replyListPOST(CriteriaVO cri) {
        return replyService.replyList(cri);
    }

    /* 댓글 수정 */
    @PostMapping("/update")
    public void replyModifyPOST(ReplyDTO dto) {
        replyService.updateReply(dto);
    }

    /* 댓글 삭제 */
    @PostMapping("/delete")
    public void replyDeletePOST(ReplyDTO dto) {
        replyService.deleteReply(dto);
    }

}
