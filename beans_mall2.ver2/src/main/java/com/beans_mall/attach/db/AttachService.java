package com.beans_mall.attach.db;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;

public interface AttachService {

	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(int beanId);

}