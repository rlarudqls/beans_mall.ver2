package com.beans_mall.admin.db;

import java.util.List;

import com.beans_mall.admin.model.AuthorVO;
import com.beans_mall.bean.model.CriteriaVO;

public interface AuthorService {

	/* 판매자 등록 */
	public void authorEnroll(AuthorVO author) throws Exception;

	/* 판매자 목록 */
	public List<AuthorVO> authorGetList(CriteriaVO cri) throws Exception;

	/* 판매자 총 수 */
	public int authorGetTotal(CriteriaVO cri) throws Exception;

	/* 판매자 상세 페이지 */
	public AuthorVO authorGetDetail(int authorId) throws Exception;

	/* 판매자 정보 수정 */
	public int authorModify(AuthorVO author) throws Exception;

	/* 판매자 정보 삭제 */
	public int authorDelete(int authorId);

}