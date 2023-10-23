package com.beans_mall.bean.dao;

import java.util.List;

import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateFilterDTO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.bean.model.SelectDTO;

public interface KKBBeanDAO {

    KKBBeanDAO getGoodsList(CriteriaVO cri);

    List<BeanVO> build();

    KKBBeanDAO goodsGetTotal(CriteriaVO cri);

    int buildGoodsTotal();

    String[] getAuthorIdList(String keyword);

    String[] buildAuthorIdList();

    KKBBeanDAO getCateCode1();

    List<CateVO> buildCateCode1();

    KKBBeanDAO getCateCode2();

    List<CateVO> buildCateCode2();

    String[] getCateList(CriteriaVO cri);

    String[] buildCateList();

    KKBBeanDAO getCateInfo(CriteriaVO cri);

    CateFilterDTO buildCateInfo();

    BeanVO getGoodsInfo(int beanId);

    BeanVO buildGoodsInfo();

    KKBBeanDAO getBeanIdName(int beanId);

    BeanVO buildBeanIdName();

    KKBBeanDAO likeSelect();

    List<SelectDTO> buildLikeSelect();
}
