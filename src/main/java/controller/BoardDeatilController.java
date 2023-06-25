package controller;

import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model2.Controller;
import vo.Board;

/*
 * localhost/mode2/board/detail.hta 요청을 처리하는 컨트롤러다.
 */
public class BoardDeatilController implements Controller{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardDeatilController의 process(request, response)에서 실행됨");
		
		// 요청객체에서 요청파라미터값(no)을 조회한다.
		int no = Integer.parseInt(request.getParameter("no"));
		
		// 조회된 글번호에 해당하는 게시글 정보를 조회하고, 게시글 정보를 요청객체의 속성으로 저장한다.
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(no);
		request.setAttribute("board", board);
		
		return "board/detail.jsp";
	}
}
