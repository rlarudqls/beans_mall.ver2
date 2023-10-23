package com.beans_mall.admin.dao;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.order.model.OrderDTO;

public interface KKBAdminDAO {

    void beanEnroll(BeanVO bean);

    List<CateVO> cateList();

    List<BeanVO> beanGetList(CriteriaVO cri);

    int beanGetTotal(CriteriaVO cri);

    BeanVO beanGetDetail(int beanId);

    int beanModify(BeanVO vo);

    int beanDelete(int beanId);

    KKBAdminDAO imageEnroll(AttachImageVO vo);

    KKBAdminDAO deleteImageAll(int beanId);

    List<AttachImageVO> checkFileList();

    List<AttachImageVO> getAttachInfo(int beanId);

    List<OrderDTO> getOrderList(CriteriaVO cri);

    int getOrderTotal(CriteriaVO cri);
}
