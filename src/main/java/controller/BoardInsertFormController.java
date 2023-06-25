package controller;

import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model2.Controller;
import vo.Board;
import vo.Customer;

/*
 * localhost/model2.board/insertform.hta 요청을 처리하는 컨트롤러다.
 */
public class BoardInsertFormController implements Controller{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardinsertFormController의 process(request, response)가 실행됨");
		
		// 세션에서 로그인된 고객 정보 조회하기
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("loginCustomer");
		if (customer == null) {
			return "redirect:../loginform.hta?error=login";
		}
		
		return "board/form.jsp";
	}
}
