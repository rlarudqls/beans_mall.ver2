package com.beans_mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	// 공지사항 페이지 이동
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String noticeGET() {
		logger.info("공지사항 페이지 진입");
		return "notice/notice";
	}

	// 자주 묻는 질문 페이지 이동
	@RequestMapping(value = "/inquire", method = RequestMethod.GET)
	public String inquireGET() {
		logger.info("자주 묻는 질문 페이지 진입");
		return "notice/inquire";
	}
}