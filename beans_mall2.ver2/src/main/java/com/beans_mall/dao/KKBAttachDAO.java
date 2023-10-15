package com.beans_mall.dao;

import java.util.List;

import com.beans_mall.vo.AttachImageVO;

public interface KKBAttachDAO {

	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(int beanId);

}