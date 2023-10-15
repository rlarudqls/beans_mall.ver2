package com.beans_mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@Controller
public class SearchController {

	@RequestMapping("/search")
	public String handleSearchRequest(@RequestParam("word") String word) {
		// 검색어(word)를 인코딩하여 URL에 추가
		String encodedWord = URLEncoder.encode(word, StandardCharsets.UTF_8);

		// 검색 결과를 표시할 URL로 리디렉션 또는 URL 변경
		String redirectUrl = "https://search.shopping.naver.com/search?query=" + encodedWord;

		return "redirect:" + redirectUrl;
	}
}
