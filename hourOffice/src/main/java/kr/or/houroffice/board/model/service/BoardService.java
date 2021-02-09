package kr.or.houroffice.board.model.service;

import java.util.HashMap;
import java.util.List;

import kr.or.houroffice.common.Page;

public interface BoardService {
	// 게시판 - 목록 selectAll
	public List<Object> selectBoardList(HashMap<String, Object> map);
	// 게시판 - 검색 List
	public List<Object> selectSearchBoardList(HashMap<String, Object> map);
	// 게시판 - 게시글 one select
	public Object selectOnePost(HashMap<String,Object> map);
	// 게시판 - 게시글 one 댓글 select
	public List<Object> selectPostComments(HashMap<String, Object> map);
	
	// 페이징 처리 메소드
	public Page getPageNavi(HashMap<String, Object> map);
	
}
