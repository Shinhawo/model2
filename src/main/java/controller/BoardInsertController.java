package controller;

import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model2.Controller;
import vo.Board;
import vo.Customer;

/*
 * localhost/model2/board/insert.hta 요청을 처리하는 컨트롤러다.
 */
public class BoardInsertController implements Controller{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardInsertController의 process(request, response)가 실행됨");
		
		// 세션에서 로그인된 고객 정보 조회하기
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("loginCustomer");
		if (customer == null) {
			return "redirect:../loginform.hta?error=login";
		}
		
		// 요청객체에서 요청파라미터값 (title, content) 조회
		String title =request.getParameter("title");
		String content = request.getParameter("content");
		
		// board 객체를 생성해서 새로 등록할 게시글 정보를 저장한다.
		Board board = new Board();
		board.setTitle(title);
		board.setContent(content);
		board.setCustomer(customer);
		
		BoardDao boardDao = new BoardDao();
		boardDao.insertBoard(board);
		
		return "redirect:list.hta";
	}
}
