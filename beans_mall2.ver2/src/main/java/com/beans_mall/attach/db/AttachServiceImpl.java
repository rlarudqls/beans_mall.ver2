package com.beans_mall.attach.db;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.attach.dao.KKBAttachDAO;
import com.beans_mall.attach.model.AttachImageVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AttachServiceImpl implements AttachService {

	@Autowired
	private KKBAttachDAO kkbAttachDAO;

	/* 이미지 데이터 반환 */
	@Override
	public List<AttachImageVO> getAttachList(int beanId) {

		log.info("getAttachList.........");

		return kkbAttachDAO.getAttachList(beanId);
	}

}