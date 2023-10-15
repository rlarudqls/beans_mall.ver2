package com.beans_mall.db;

import java.util.List;

import com.beans_mall.dto.CateFilterDTO;
import com.beans_mall.dto.SelectDTO;
import com.beans_mall.vo.BeanVO;
import com.beans_mall.vo.CateVO;
import com.beans_mall.vo.CriteriaVO;

public interface BeanService {

	/* 상품 검색 */
	public List<BeanVO> getGoodsList(CriteriaVO cri);

	/* 상품 총 개수 */
	public int goodsGetTotal(CriteriaVO cri);

	/* 국내 카테고리 리스트 */
	public List<CateVO> getCateCode1();

	/* 외국 카테고리 리스트 */
	public List<CateVO> getCateCode2();

	/* 검색결과 카테고리 필터 정보 */
	public List<CateFilterDTO> getCateInfoList(CriteriaVO cri);

	/* 상품 정보 */
	public BeanVO getGoodsInfo(int beanId);

	/* 상품 id 이름 */
	public BeanVO getBeanIdName(int beanId);

	/* 평점순 상품 정보 */
	public List<SelectDTO> likeSelect();
}