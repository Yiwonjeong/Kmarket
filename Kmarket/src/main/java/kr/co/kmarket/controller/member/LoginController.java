package kr.co.kmarket.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket.service.MemberService;
import kr.co.kmarket.vo.MemberVO;

@WebServlet("/member/login.do")
public class LoginController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private MemberService service = MemberService.INSTANCE;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("LoginController doGet...");
		
		//String success = req.getParameter("success");
		//req.setAttribute(success, success);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/member/login.jsp");
		dispatcher.forward(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("LoginController doPost...");
		
		String uid = req.getParameter("uid");
		String pass = req.getParameter("pass");
		
		MemberVO vo = service.selectMember(uid, pass);
		
		if(vo != null) {
			// 회원이 맞을 경우
			HttpSession sess = req.getSession();
			sess.setAttribute("sessUser", vo);
			
			System.out.println("--- 로그인 성공 ---");
			
			
			resp.sendRedirect("/Kmarket/index.do");
		}else {
			// 회원이 아닐 경우
			System.out.println("LoginController - 로그인 실패");
			resp.setContentType("text/html;charset=UTF-8"); 
            PrintWriter out = resp.getWriter(); 
            out.println("<script>"); 
            out.println("alert('The ID or password you entered is incorrect.');"); 
            out.println("history.back();"); 
            out.println("</script>"); 
            out.close();
			resp.sendRedirect("/Kmarket/member/login.do?success=100");
		}
		
	}
}
