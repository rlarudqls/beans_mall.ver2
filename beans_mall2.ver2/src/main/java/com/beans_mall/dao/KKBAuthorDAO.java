package com.beans_mall.dao;

import java.util.List;

import com.beans_mall.vo.AuthorVO;
import com.beans_mall.vo.CriteriaVO;

public interface KKBAuthorDAO {

	public void authorEnroll(AuthorVO author);

	public List<AuthorVO> authorGetList(CriteriaVO cri);

	public int authorGetTotal(CriteriaVO cri);

	public AuthorVO authorGetDetail(int authorId);

	public int authorModify(AuthorVO author);

	public int authorDelete(int authorId);

}
