package com.beans_mall.email.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beans_mall.email.db.EmailService;

@Controller
public class EmailController {

    private final EmailService emailService;

    @Autowired
    public EmailController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping("/other_categories/conditions")
    public ModelAndView sendEmailToAdmin() {
        String to = "kkb3431@gmail.com"; // 관리자 이메일 주소
        String subject = "지연 배송 신고";
        String message = "배송이 지연되었습니다. 조치 부탁드립니다.";

        // EmailService를 사용하여 이메일 전송
        boolean emailSentSuccessfully = emailService.sendEmail(to, subject, message);

        ModelAndView modelAndView = new ModelAndView();

        if (emailSentSuccessfully) {
            // 성공 페이지로 이동
            modelAndView.setViewName("redirect:/main");
        }

        return modelAndView;
    }
}
