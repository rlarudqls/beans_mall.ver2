package com.beans_mall.member.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beans_mall.member.db.MemberService;
import com.beans_mall.member.model.MemberVO;
import org.mindrot.jbcrypt.BCrypt;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    private final MemberService memberService;
    private final JavaMailSender mailSender;

    @Autowired
    public MemberController(MemberService memberService, JavaMailSender mailSender) {
        this.memberService = memberService;
        this.mailSender = mailSender;
    }

    // 회원가입 페이지 이동
    @GetMapping("/join")
    public void joinGET() {
        logger.info("회원가입 페이지 진입");
    }

    // 회원가입
    @PostMapping("/join")
    public String joinPOST(@ModelAttribute MemberVO member) throws Exception {
        // 요청에서 비밀번호를 가져옵니다.
        String password = member.getMemberPw();

        // BCrypt를 사용하여 비밀번호를 해싱합니다.
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

        // 해싱된 비밀번호를 MemberVO에 설정합니다.
        member.setMemberPw(hashedPassword);

        memberService.memberJoin(member);
        return "redirect:/main";
    }

    // 로그인 페이지 이동
    @GetMapping("/login")
    public void loginGET() {
        logger.info("로그인 페이지 진입");
    }

    // 아이디 중복 검사
    @PostMapping("/memberIdChk")
    @ResponseBody
    public String memberIdChkPOST(@RequestParam String memberId) throws Exception {
        logger.info("memberIdChk() 진입");
        int result = memberService.idCheck(memberId);
        logger.info("결과값 = " + result);
        return (result != 0) ? "fail" : "success";
    }

    /* 이메일 인증 */
    @GetMapping("/mailCheck")
    @ResponseBody
    public String mailCheckGET(@RequestParam String email) throws Exception {
        logger.info("이메일 데이터 전송 확인");
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        logger.info("인증번호: " + checkNum);

        String setFrom = "kkb3431@gmail.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = "인증번호는 " + checkNum + "입니다. 회원가입 페이지로 돌아가 인증번호를 입력해주세요.";

        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");

            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content);

            mailSender.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return String.valueOf(checkNum);
    }

    // 로그인 상태 확인 메서드
    private boolean isLoggedIn(HttpSession session) {
        MemberVO member = (MemberVO) session.getAttribute("member");
        return member != null;
    }

    // 메인 페이지 이동
    @GetMapping("/main")
    public String mainGET(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        boolean isLoggedIn = isLoggedIn(session);
        model.addAttribute("isLoggedIn", isLoggedIn);
        return "main";
    }

    // 로그인 처리
    @PostMapping("/login")
    public String loginPOST(HttpServletRequest request, @ModelAttribute MemberVO member, RedirectAttributes rttr) throws Exception {
        logger.info("loginPOST");
        HttpSession session = request.getSession();
        MemberVO login = memberService.memberLogin(member);
        if (login == null || !BCrypt.checkpw(member.getMemberPw(), login.getMemberPw())) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
        } else {
            session.setAttribute("member", login);
        }
        return "redirect:/main";
    }

    /* 메인페이지 로그아웃 */
    @GetMapping("/logout")
    public String logoutMainGET(HttpServletRequest request) throws Exception {
        logger.info("logoutMainGET메서드 진입");
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/main";
    }
}
