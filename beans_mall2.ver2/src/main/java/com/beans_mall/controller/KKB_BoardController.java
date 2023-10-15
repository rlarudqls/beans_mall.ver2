package com.beans_mall.controller;

import com.beans_mall.db.KKB_BoardService;
import com.beans_mall.vo.KKB_BoardVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/board")
public class KKB_BoardController {
    private final KKB_BoardService boardService;

    @Autowired
    public KKB_BoardController(KKB_BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping("/kkb_boardList")
    public String getAllBoards(Model model) {
        model.addAttribute("boardList", boardService.getAllBoards());
        return "board/kkb_boardList";
    }

    @GetMapping("/create")
    public String createBoardForm(Model model) {
        model.addAttribute("board", new KKB_BoardVO());
        return "board/kkb_boardCreate";
    }

    @PostMapping("/create")
    public String createBoard(@ModelAttribute("board") KKB_BoardVO board) {
        boardService.createBoard(board);
        return "redirect:/board/kkb_boardList";
    }

    @GetMapping("/{id}/edit")
    public String editBoardForm(@PathVariable String id, Model model) {
        int boardId = Integer.parseInt(id);
        KKB_BoardVO board = boardService.getBoardById(boardId);
        model.addAttribute("board", board);
        return "board/kkb_boardEdit";
    }

    @PostMapping("/{id}/edit")
    public String updateBoard(@PathVariable int id, @ModelAttribute("board") KKB_BoardVO board) {
        board.setId(id);
        boardService.updateBoard(board);
        return "redirect:/board/kkb_boardList";
    }

    @GetMapping("/{id}/delete")
    public String deleteBoard(@PathVariable int id) {
        boardService.deleteBoard(id);
        return "redirect:/board/kkb_boardList";
    }
}
