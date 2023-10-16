package com.beans_mall.KKB_Board.db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans_mall.KKB_Board.model.KKB_BoardVO;

import java.util.List;

@Service
public class KKB_BoardServiceImpl implements KKB_BoardService {
	private final KKB_BoardRepository boardRepository;

	@Autowired
	public KKB_BoardServiceImpl(KKB_BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}

	@Override
	public void createBoard(KKB_BoardVO board) {
		boardRepository.createBoard(board);
	}

	@Override
	public KKB_BoardVO getBoardById(int id) {
		return boardRepository.getBoardById(id);
	}

	@Override
	public List<KKB_BoardVO> getAllBoards() {
		return boardRepository.getAllBoards();
	}

	@Override
	public void updateBoard(KKB_BoardVO board) {
		boardRepository.updateBoard(board);
	}

	@Override
	public void deleteBoard(int id) {
		boardRepository.deleteBoard(id);
	}
}
