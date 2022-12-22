package kr.co.kmarket.controller.admin.cs.qna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.JsonObject;

import kr.co.kmarket.service.CsService;

@WebServlet("/admin/cs/qna/delete.do")
public class DeleteController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CsService service = CsService.INSTANCE;
	Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	public void init() throws ServletException {
		
	} 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("doGet");
		
		String no = req.getParameter("no");
		
		logger.debug("no : " +no);
		
		int result =service.deleteArticle(no);
		
		logger.debug("result : "+result);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		
		PrintWriter writer = resp.getWriter();
		writer.print(json.toString());
		
		//resp.sendRedirect("/Kmarket/admin/cs/qna/list.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("doPost");
		
	}
}
