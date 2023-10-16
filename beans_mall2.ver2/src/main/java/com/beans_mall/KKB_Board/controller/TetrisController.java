package com.beans_mall.KKB_Board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TetrisController {

	@GetMapping("/play-tetris")
	public String playTetris() {
		return "game/tetris";
	}
}
