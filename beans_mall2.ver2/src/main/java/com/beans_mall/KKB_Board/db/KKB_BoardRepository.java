package com.beans_mall.KKB_Board.db;

import java.util.List;

import com.beans_mall.KKB_Board.model.KKB_BoardVO;

public interface KKB_BoardRepository {
	void createBoard(KKB_BoardVO board);

	KKB_BoardVO getBoardById(int id);

	List<KKB_BoardVO> getAllBoards();

	void updateBoard(KKB_BoardVO board);

	void deleteBoard(int id);
}
