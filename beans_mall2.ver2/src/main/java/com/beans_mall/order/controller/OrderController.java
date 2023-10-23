package com.beans_mall.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.beans_mall.member.db.MemberService;
import com.beans_mall.member.model.MemberVO;
import com.beans_mall.order.db.OrderService;
import com.beans_mall.order.model.OrderDTO;
import com.beans_mall.order.model.OrderPageDTO;

@Controller
public class OrderController {

    private final OrderService orderService;
    private final MemberService memberService;

    @Autowired
    public OrderController(OrderService orderService, MemberService memberService) {
        this.orderService = orderService;
        this.memberService = memberService;
    }

    @GetMapping("/order/{memberId}")
    public String orderPageGET(@PathVariable("memberId") String memberId, OrderPageDTO opd, Model model) {
        model.addAttribute("orderList", orderService.getGoodsInfo(opd.getOrders()));
        model.addAttribute("memberInfo", memberService.getMemberInfo(memberId));

        return "order"; // order.jsp를 뷰로 반환
    }

    @PostMapping("/order")
    public String orderPagePOST(@RequestParam("memberId") String memberId, OrderDTO od, HttpServletRequest request) {
        System.out.println(od);

        od.setMemberAddr1(memberId);
        orderService.order(od);

        MemberVO member = new MemberVO(null);
        member.setMemberAddr1(od.getMemberId());

        HttpSession session = request.getSession();

        try {
            MemberVO memberLogin = memberService.memberLogin(member);
            memberLogin.setMemberPw("");
            session.setAttribute("member", memberLogin);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "order";
    }

}
