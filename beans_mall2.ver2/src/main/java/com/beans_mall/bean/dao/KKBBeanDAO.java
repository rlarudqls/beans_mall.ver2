package com.beans_mall.bean.dao;

import java.util.List;

import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateFilterDTO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.bean.model.SelectDTO;

public interface KKBBeanDAO {

	/* 상품 검색 */
	public List<BeanVO> getGoodsList(CriteriaVO cri);

	/* 상품 총 갯수 */
	public int goodsGetTotal(CriteriaVO cri);

	/* 판매자 id 리스트 요청 */
	public String[] getAuthorIdList(String keyword);

	/* 국내 카테고리 리스트 */
	public List<CateVO> getCateCode1();

	/* 외국 카테고리 리스트 */
	public List<CateVO> getCateCode2();

	/* 검색 대상 카테고리 리스트 */
	public String[] getCateList(CriteriaVO cri);

	/* 카테고리 정보(+검색대상 갯수) */
	public CateFilterDTO getCateInfo(CriteriaVO cri);

	/* 상품 정보 */
	public BeanVO getGoodsInfo(int beanId);

	/* 상품 id 이름 */
	public BeanVO getBeanIdName(int beanId);

	/* 평줌순 상품 정보 */
	public List<SelectDTO> likeSelect();

}