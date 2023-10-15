package com.beans_mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;
import java.util.List;

@Controller
public class RouletteController {

	@GetMapping("/roulette")
	public String roulette(Model model) {
		List<String> items = Arrays.asList("디저트", "음료", "전통주", "수제 반찬", "수제 먹거리", "농축수산", "의류", "패션잡화", "지갑", "가방",
				"시계", "홈 패브릭", "남성신발", "여성신발", "아동", "반지", "귀걸이", "목걸이", "팔찌", "액세서리", "꽃", "캔들", "홈인테리어", "도자기", "주방",
				"가구", "장난감", "반려용품", "파인아트", "공예", "디지털악세서리", "문구", "캐리커쳐", "차량용품", "도서", "향수", "뷰티", "헤어", "수제비누",
				"용돈이벤트");

		model.addAttribute("items", items);
		return "oc";
	}

	@GetMapping("/oc")
	public String oc() {
		return "oc";
	}

	@GetMapping("/w/me")
	public String showMePage() {
		return "w/me";
	}

	@GetMapping("/w/cart")
	public String showMePage2() {
		return "w/cart";
	}
}
