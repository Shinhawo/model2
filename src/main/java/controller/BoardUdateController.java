package controller;

import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model2.Controller;
import vo.Board;

/*
 * localhost/model2/board/update.hta 요청을 처리하는 컨트롤러다.
 */
public class BoardUdateController implements Controller {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardUpdateController의 process(request, response)에서 실행됨");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(no);
		
		board.setTitle(title);
		board.setContent(content);
		
		boardDao.updateBoard(board);
		
		return "redirect:detail.hta?no=" + no;
	}
}
