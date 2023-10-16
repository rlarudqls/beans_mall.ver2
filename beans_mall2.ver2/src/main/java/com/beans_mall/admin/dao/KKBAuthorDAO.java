package com.beans_mall.admin.dao;

import java.util.List;

import com.beans_mall.admin.model.AuthorVO;
import com.beans_mall.bean.model.CriteriaVO;

public interface KKBAuthorDAO {

    KKBAuthorDAO authorEnroll(AuthorVO author);

    List<AuthorVO> authorGetList(CriteriaVO cri);

    int authorGetTotal(CriteriaVO cri);

    KKBAuthorDAO authorGetDetail(int authorId);

    KKBAuthorDAO authorModify(AuthorVO author);

    KKBAuthorDAO authorDelete(int authorId);
}
