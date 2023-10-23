package com.beans_mall.attach.dao;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;

public interface KKBAttachDAO {

    List<AttachImageVO> getAttachList(int beanId);

    List<AttachImageVO> build();
}
