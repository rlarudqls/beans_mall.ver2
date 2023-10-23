package com.beans_mall.admin.dao;

import java.util.List;

import com.beans_mall.admin.model.AuthorVO;
import com.beans_mall.bean.model.CriteriaVO;

public interface KKBAuthorDAO {

    void authorEnroll(AuthorVO author) throws Exception;

    List<AuthorVO> authorGetList(CriteriaVO cri) throws Exception;

    int authorGetTotal(CriteriaVO cri) throws Exception;

    AuthorVO authorGetDetail(int authorId) throws Exception;

    int authorModify(AuthorVO author) throws Exception;

    int authorDelete(int authorId);
}
