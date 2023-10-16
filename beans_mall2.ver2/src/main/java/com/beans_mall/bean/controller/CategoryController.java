package com.beans_mall.bean.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {

	@GetMapping("/other_categories/diy")
	public String diyPage() {
		return "Other_categories/DIY";
	}

	@GetMapping("/other_categories/latest")
	public String latestPage() {
		return "Other_categories/Latest";
	}

	@GetMapping("/other_categories/purchase")
	public String purchasePage() {
		return "Other_categories/Purchase";
	}

	@GetMapping("/other_categories/recommendation")
	public String recommendationPage() {
		return "Other_categories/Recommendation";
	}

	@GetMapping("/other_categories/review")
	public String reviewPage() {
		return "Other_categories/review";
	}

	@GetMapping("/other_categories/season_discount")
	public String seasonDiscountPage() {
		return "Other_categories/season_discount";
	}

	@GetMapping("/other_categories/recruitment")
	public String recruitmentPage() {
		return "Other_categories/recruitment";
	}

	@GetMapping("/other_categories/personal_information")
	public String personalInformationPage() {
		return "Other_categories/Personal_information";
	}

	@GetMapping("/other_categories/event")
	public String eventPage() {
		return "Other_categories/Event";
	}

	@GetMapping("/other_categories/conditions")
	public String conditionsPage() {
		return "Other_categories/Conditions";
	}
}