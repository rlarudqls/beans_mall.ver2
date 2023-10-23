//생성자 주입을 사용하면 필드에 @Autowired 어노테이션을 사용하지 않아도 됩니다. 대신 Spring이 자동으로 생성자를 통해 의존성을 주입해 줍니다.
//이 코드는 생성자 주입을 사용하여 AuthorService, AdminService, OrderService에 의존성을 주입합니다. 이제 필드에 @Autowired 어노테이션을 사용하지 않고 생성자를 통해 의존성을 주입합니다.
package com.beans_mall.admin.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beans_mall.admin.db.AdminService;
import com.beans_mall.admin.db.AuthorService;
import com.beans_mall.admin.model.AuthorVO;
import com.beans_mall.attach.model.AttachImageVO;
import com.beans_mall.bean.model.BeanVO;
import com.beans_mall.bean.model.CateVO;
import com.beans_mall.bean.model.CriteriaVO;
import com.beans_mall.bean.model.PageDTO;
import com.beans_mall.order.db.OrderService;
import com.beans_mall.order.model.OrderCancelDTO;
import com.beans_mall.order.model.OrderDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    private final AuthorService authorService;
    private final AdminService adminService;
    private final OrderService orderService;

    public AdminController(AuthorService authorService, AdminService adminService, OrderService orderService) {
        this.authorService = authorService;
        this.adminService = adminService;
        this.orderService = orderService;
    }

    @RequestMapping(value = "main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception {
        logger.info("관리자 페이지 이동");
    }

    @RequestMapping(value = "goodsManage", method = RequestMethod.GET)
    public void goodsManageGET(CriteriaVO cri, Model model) throws Exception {
        logger.info("상품 관리(상품목록) 페이지 접속");

        List<BeanVO> list = adminService.goodsGetList(cri);

        if (!list.isEmpty()) {
            model.addAttribute("list", list);
        } else {
            model.addAttribute("listCheck", "empty");
            return;
        }

    }

    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET(Model model) throws Exception {
        logger.info("상품 등록 페이지 접속");

        ObjectMapper objm = new ObjectMapper();

        List<CateVO> list = adminService.cateList();

        String cateList = objm.writeValueAsString(list);

        model.addAttribute("cateList", cateList);
    }

    @GetMapping({ "/goodsDetail", "/goodsModify" })
    public void goodsGetInfoGET(int beanId, CriteriaVO cri, Model model) throws JsonProcessingException {
        logger.info("goodsGetInfo()........." + beanId);

        ObjectMapper mapper = new ObjectMapper();

        model.addAttribute("cateList", mapper.writeValueAsString(adminService.cateList()));

        model.addAttribute("cri", cri);

        model.addAttribute("goodsInfo", adminService.goodsGetDetail(beanId));
    }

    @PostMapping("/goodsModify")
    public String goodsModifyPOST(BeanVO vo, RedirectAttributes rttr) {
        logger.info("goodsModifyPOST.........." + vo);

        int result = adminService.goodsModify(vo);

        rttr.addFlashAttribute("modify_result", result);

        return "redirect:/admin/goodsManage";
    }

    @PostMapping("/goodsDelete")
    public String goodsDeletePOST(int beanId, RedirectAttributes rttr) {
        logger.info("goodsDeletePOST..........");

        List<AttachImageVO> fileList = adminService.getAttachInfo(beanId);

        if (fileList != null) {

            List<Path> pathList = new ArrayList<>();

            fileList.forEach(vo -> {

                Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
                pathList.add(path);

                path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid() + "_" + vo.getFileName());
                pathList.add(path);

            });

            pathList.forEach(path -> {
                path.toFile().delete();
            });
        }

        int result = adminService.goodsDelete(beanId);

        rttr.addFlashAttribute("delete_result", result);

        return "redirect:/admin/goodsManage";
    }

    @RequestMapping(value = "authorEnroll", method = RequestMethod.GET)
    public void authorEnrollGET() throws Exception {
        logger.info("판매자 등록 페이지 접속");
    }

    @RequestMapping(value = "authorManage", method = RequestMethod.GET)
    public void authorManageGET(CriteriaVO cri, Model model) throws Exception {
        logger.info("판매자 관리 페이지 접속.........." + cri);

        List<AuthorVO> list = authorService.authorGetList(cri);

        if (!list.isEmpty()) {
            model.addAttribute("list", list);
        } else {
            model.addAttribute("listCheck", "empty");
        }

    }

    @RequestMapping(value = "authorEnroll.do", method = RequestMethod.POST)
    public String authorEnrollPOST(AuthorVO author, RedirectAttributes rttr) throws Exception {

        logger.info("authorEnroll :" + author);

        authorService.authorEnroll(author);

        rttr.addFlashAttribute("enroll_result", author.getAuthorName());

        return "redirect:/admin/authorManage";
    }

    @GetMapping({ "/authorDetail", "/authorModify" })
    public void authorGetInfoGET(int authorId, CriteriaVO cri, Model model) throws Exception {
        logger.info("authorDetail......." + authorId);

        model.addAttribute("cri", cri);

        model.addAttribute("authorInfo", authorService.authorGetDetail(authorId));
    }

    @PostMapping("/authorModify")
    public String authorModifyPOST(AuthorVO author, RedirectAttributes rttr) throws Exception {
        logger.info("authorModifyPOST......." + author);

        int result = authorService.authorModify(author);

        rttr.addFlashAttribute("modify_result", result);

        return "redirect:/admin/authorManage";
    }

    @PostMapping("/authorDelete")
    public String authorDeletePOST(int authorId, RedirectAttributes rttr) {
        logger.info("authorDeletePOST..........");

        int result = 0;

        try {

            result = authorService.authorDelete(authorId);

        } catch (Exception e) {

            e.printStackTrace();
            result = 2;
            rttr.addFlashAttribute("delete_result", result);

            return "redirect:/admin/authorManage";

        }

        rttr.addFlashAttribute("delete_result", result);

        return "redirect:/admin/authorManage";
    }

    @PostMapping("/goodsEnroll")
    public String goodsEnrollPOST(BeanVO bean, RedirectAttributes rttr) {
        logger.info("goodsEnrollPOST......" + bean);

        adminService.beanEnroll(bean);

        rttr.addFlashAttribute("enroll_result", bean.getBeanName());

        return "redirect:/admin/goodsManage";
    }

    @GetMapping("/authorPop")
    public void authorPopGET(CriteriaVO cri, Model model) throws Exception {
        logger.info("authorPopGET.......");

        cri.setAmount(5);

        List<AuthorVO> list = authorService.authorGetList(cri);

        if (!list.isEmpty()) {
            model.addAttribute("list", list);
        } else {
            model.addAttribute("listCheck", "empty");
        }

    }

    @PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
        logger.info("uploadAjaxActionPOST..........");

        for (MultipartFile multipartFile : uploadFile) {

            File checkfile = new File(multipartFile.getOriginalFilename());
            String type = null;

            try {
                type = Files.probeContentType(checkfile.toPath());
                logger.info("MIME TYPE : " + type);
            } catch (IOException e) {
                e.printStackTrace();
            }

            if (!type.startsWith("image")) {

                List<AttachImageVO> list = null;
                return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
            }
        }

        String uploadFolder = "C:\\upload";

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Date date = new Date();

        String str = sdf.format(date);

        String datePath = str.replace("-", File.separator);

        File uploadPath = new File(uploadFolder, datePath);

        if (!uploadPath.exists()) {
            uploadPath.mkdirs();
        }

        List<AttachImageVO> list = new ArrayList<>();

        for (MultipartFile multipartFile : uploadFile) {

            AttachImageVO vo = new AttachImageVO(null);

            String uploadFileName = multipartFile.getOriginalFilename();
            vo.setFileName(uploadFileName);
            vo.setUploadPath(datePath);

            String uuid = UUID.randomUUID().toString();
            vo.setUuid(uuid);

            uploadFileName = uuid + "_" + uploadFileName;

            File saveFile = new File(uploadPath, uploadFileName);

            try {

                multipartFile.transferTo(saveFile);

                File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);

            } catch (Exception e) {
                e.printStackTrace();
            }

            list.add(vo);
        }

        ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);

        return result;
    }

    @PostMapping("/deleteFile")
    public ResponseEntity<String> deleteFile(String fileName) {
        logger.info("deleteFile........" + fileName);

        File file = null;

        try {

            file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));

            file.delete();

            String originFileName = file.getAbsolutePath().replace("s_", "");

            logger.info("originFileName : " + originFileName);

            file = new File(originFileName);

            file.delete();

        } catch (Exception e) {
            e.printStackTrace();

            return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
        }

        return new ResponseEntity<String>("success", HttpStatus.OK);
    }

    @GetMapping("/orderList")
    public String orderListGET(CriteriaVO cri, Model model) {
        List<OrderDTO> list = adminService.getOrderList(cri);

        if (!list.isEmpty()) {
            model.addAttribute("list", list);
        } else {
            model.addAttribute("listCheck", "empty");
        }

        return "/admin/orderList";
    }

    @PostMapping("/orderCancle")
    public String orderCanclePOST(OrderCancelDTO dto) {
        orderService.orderCancle(dto);

        return "redirect:/admin/orderList?keyword=" + dto.getKeyword() + "&amount=" + dto.getAmount() + "&pageNum="
                + dto.getPageNum();
    }
}
