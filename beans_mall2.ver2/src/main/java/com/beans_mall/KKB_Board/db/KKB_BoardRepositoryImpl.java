package com.beans_mall.KKB_Board.db;

import org.springframework.stereotype.Repository;

import com.beans_mall.KKB_Board.model.KKB_BoardVO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class KKB_BoardRepositoryImpl implements KKB_BoardRepository {
	private final Map<Integer, KKB_BoardVO> boardMap;

	public KKB_BoardRepositoryImpl() {
		this.boardMap = new HashMap<>();
	}

	@Override
	public void createBoard(KKB_BoardVO board) {
		boardMap.put(board.getId(), board);
	}

	@Override
	public KKB_BoardVO getBoardById(int id) {
		return boardMap.get(id);
	}

	@Override
	public List<KKB_BoardVO> getAllBoards() {
		return new ArrayList<>(boardMap.values());
	}

	@Override
	public void updateBoard(KKB_BoardVO board) {
		boardMap.put(board.getId(), board);
	}

	@Override
	public void deleteBoard(int id) {
		boardMap.remove(id);
	}
}
