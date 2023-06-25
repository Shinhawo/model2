package controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model2.Controller;

/*
 * localhost/model2/registerform.hta 요청을 처리하는 컨트롤러이다.
 */
public class RegisterFormController implements Controller {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("UserRegisterFormController의 process(request, response) 실행됨.");
		
		
		
		return "registerform.jsp";
	}
}