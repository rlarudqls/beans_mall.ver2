package com.beans_mall.bean.db;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.admin.dao.KKBAdminDAO;
import com.beans_mall.attach.dao.KKBAttachDAO;
import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.bean.dao.KKBBeanDAO;
import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateFilterDTO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.bean.model.SelectDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BeanServiceImpl implements BeanService {

    @Autowired
    private KKBBeanDAO kkbBeanDAO;

    @Autowired
    private KKBAttachDAO kkbAttachDAO;

    @Autowired
    private KKBAdminDAO kkbAdminDAO;

    /* 상품 검색 */
    @Override
    public List<BeanVO> getGoodsList(CriteriaVO cri) {
        log.info("getGoodsList().......");

        String type = cri.getType();
        String[] typeArr = type.split("");
        String[] authorArr = null;

        if (type.equals("A") || type.equals("AC") || type.equals("AT") || type.equals("ACT")) {
            authorArr = kkbBeanDAO.getAuthorIdList(cri.getKeyword());

            if (authorArr.length == 0) {
                return new ArrayList<>();
            }
        }

        for (String t : typeArr) {
            if (t.equals("A")) {
                if (authorArr == null) {
                    authorArr = kkbBeanDAO.getAuthorIdList(cri.getKeyword());
                }
            }
        }

        KKBBeanDAO goodsListDAO = kkbBeanDAO.getGoodsList(cri);
        List<BeanVO> list = goodsListDAO.build();

        if (list != null) {
            list.forEach(bean -> {
                int beanId = bean.getBeanId();
                KKBAttachDAO attachListDAO = (KKBAttachDAO) kkbAttachDAO.getAttachList(beanId);
                List<AttachImageVO> imageList = attachListDAO.build();
                bean.setImageList(imageList);
            });
        }

        return list != null ? list : new ArrayList<>();
    }

    /* 사품 총 갯수 */
    @Override
    public int goodsGetTotal(CriteriaVO cri) {
        log.info("goodsGetTotal().......");
        KKBBeanDAO goodsTotalDAO = kkbBeanDAO.goodsGetTotal(cri);
        return goodsTotalDAO.buildGoodsTotal();
    }

    /* 국내 카테고리 리스트 */
    @Override
    public List<CateVO> getCateCode1() {
        log.info("getCateCode1().........");
        KKBBeanDAO cateCode1DAO = kkbBeanDAO.getCateCode1();
        return cateCode1DAO.buildCateCode1();
    }

    /* 외국 카테고리 리스트 */
    @Override
    public List<CateVO> getCateCode2() {
        log.info("getCateCode2().........");
        KKBBeanDAO cateCode2DAO = kkbBeanDAO.getCateCode2();
        return cateCode2DAO.buildCateCode2();
    }

    /* 검색결과 카테고리 필터 정보 */
    @Override
    public List<CateFilterDTO> getCateInfoList(CriteriaVO cri) {
        List<CateFilterDTO> filterInfoList = new ArrayList<CateFilterDTO>();
        String[] typeArr = cri.getType().split("");
        String[] authorArr;
        for (String type : typeArr) {
            if (type.equals("A")) {
                authorArr = kkbBeanDAO.getAuthorIdList(cri.getKeyword());
                if (authorArr.length == 0) {
                    return filterInfoList;
                }
                cri.setAuthorArr(authorArr);
            }
        }
        String[] cateList = kkbBeanDAO.getCateList(cri);
        String tempCateCode = cri.getCateCode();
        for (String cateCode : cateList) {
            cri.setCateCode(cateCode);
            KKBBeanDAO cateInfoDAO = kkbBeanDAO.getCateInfo(cri);
            CateFilterDTO filterInfo = cateInfoDAO.buildCateInfo();
            filterInfoList.add(filterInfo);
        }
        cri.setCateCode(tempCateCode);
        return filterInfoList;
    }

    /* 상품 정보 */
    @Override
    public BeanVO getGoodsInfo(int beanId) {
        KKBBeanDAO goodsInfoDAO = (KKBBeanDAO) kkbBeanDAO.getGoodsInfo(beanId);
        BeanVO goodsInfo = goodsInfoDAO.buildGoodsInfo();
        goodsInfo.setImageList(kkbAdminDAO.getAttachInfo(beanId));
        return goodsInfo;
    }

    @Override
    public BeanVO getBeanIdName(int beanId) {
        KKBBeanDAO beanIdNameDAO = kkbBeanDAO.getBeanIdName(beanId);
        return beanIdNameDAO.buildBeanIdName();
    }

    @Override
    public List<SelectDTO> likeSelect() {
        KKBBeanDAO likeSelectDAO = kkbBeanDAO.likeSelect();
        List<SelectDTO> list = likeSelectDAO.buildLikeSelect();
        list.forEach(dto -> {
            int beanId = dto.getBeanId();
            KKBAttachDAO attachListDAO = (KKBAttachDAO) kkbAttachDAO.getAttachList(beanId);
            List<AttachImageVO> imageList = attachListDAO.build();
            dto.setImageList(imageList);
        });
        return list;
    }
}
