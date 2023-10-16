package com.beans_mall.admin.dao;

import java.util.List;

import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.order.model.OrderDTO;

public interface KKBAdminDAO {

	/* 상품 등록 */
	public void beanEnroll(BeanVO bean);

	/* 카테고리 리스트 */
	public List<CateVO> cateList();

	/* 상품 리스트 */
	public List<BeanVO> beanGetList(CriteriaVO cri);

	/* 상품 총 개수 */
	public int beanGetTotal(CriteriaVO cri);

	/* 상품 조회 페이지 */
	public BeanVO beanGetDetail(int beanId);

	/* 상품 수정 */
	public int beanModify(BeanVO vo);

	/* 상품 정보 삭제 */
	public int beanDelete(int beanId);

	/* 이미지 등록 */
	public void imageEnroll(AttachImageVO vo);

	/* 지정 상품 이미지 전체 삭제 */
	public void deleteImageAll(int beanId);

	/* 어제자 날짜 이미지 리스트 */
	public List<AttachImageVO> checkFileList();

	/* 지정 상품 이미지 정보 얻기 */
	public List<AttachImageVO> getAttachInfo(int beanId);

	/* 주문 상품 리스트 */
	public List<OrderDTO> getOrderList(CriteriaVO cri);

	/* 주문 총 갯수 */
	public int getOrderTotal(CriteriaVO cri);

}