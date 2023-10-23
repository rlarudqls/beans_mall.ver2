package com.beans_mall.admin.db;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.admin.dao.KKBAuthorDAO;
import com.beans_mall.admin.model.AuthorVO;
import com.beans_mall.bean.model.CriteriaVO;

@Service
public class AuthorServiceImpl implements AuthorService {

    private static final Logger log = LoggerFactory.getLogger(AuthorServiceImpl.class);

    @Autowired
    private KKBAuthorDAO kkbAuthorDAO;

    /* 판매자 등록 */
    @Override
    public void authorEnroll(AuthorVO author) throws Exception {
        kkbAuthorDAO.authorEnroll(author);
    }

    /* 판매자 목록 */
    @Override
    public List<AuthorVO> authorGetList(CriteriaVO cri) throws Exception {
        log.info("(service)authorGetList()......." + cri);
        return kkbAuthorDAO.authorGetList(cri);
    }

    /* 판매자 총 수 */
    @Override
    public int authorGetTotal(CriteriaVO cri) throws Exception {
        log.info("(service)authorGetTotal()......." + cri);
        return kkbAuthorDAO.authorGetTotal(cri);
    }

    /* 판매자 상세 페이지 */
    @Override
    public AuthorVO authorGetDetail(int authorId) throws Exception {
        log.info("authorGetDetail........" + authorId);
        return kkbAuthorDAO.authorGetDetail(authorId);
    }

    /* 판매자 정보 수정 */
    @Override
    public int authorModify(AuthorVO author) throws Exception {
        return kkbAuthorDAO.authorModify(author);
    }

    /* 판매자 정보 삭제 */
    @Override
    public int authorDelete(int authorId) {
        return kkbAuthorDAO.authorDelete(authorId);
    }
}
