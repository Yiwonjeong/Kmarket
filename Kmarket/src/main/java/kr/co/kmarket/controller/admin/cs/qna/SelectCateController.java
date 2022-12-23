package kr.co.kmarket.controller.admin.cs.qna;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;

import kr.co.kmarket.service.CsService;
import kr.co.kmarket.vo.AdminCsListVO;
import kr.co.kmarket.vo.CsVO;

@WebServlet("/admin/cs/qna/select.do")
public class SelectCateController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CsService service = CsService.INSTANCE;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("doGet");
		
		resp.setContentType("text/html;charset=UTF-8");
		
		String cate = req.getParameter("cate");
		String cateType1 = req.getParameter("cateType1");
		String cateType2 = req.getParameter("cateType2");
		String pg = req.getParameter("pg");
		
		logger.debug("cateType1 : " + cateType1);
		logger.debug("cateType2 : " + cateType2);
	
		// 
		int currentPage = service.getCurrentPage(pg);
		// 전체 게시물 개수 
		int total = service.selectCountTotal(cate, cateType1, cateType2);
		// 마지막 페이지 번호
		int lastPageNum = service.getLastPageNum(total);
		// 현재 페이지 게시글 시작값
		int limitStart = service.getLimitStart(currentPage);
		// 페이지 그룹* pageGroupStart, end
		int [] result = service.getPageGroupNum(currentPage, lastPageNum);
		// 페이지 시작 번호
		int pageStartNum = service.getPageStartNum(total, limitStart);
		// 게시글 번호 정렬
		int start = service.getStartNum(currentPage);
		
		List<CsVO> articles = service.selectArticlesCateType2(cateType1, cateType2, start);
		
		AdminCsListVO vo = new AdminCsListVO();
		vo.setCurrentPage(currentPage);
		vo.setLastPageNum(lastPageNum);
		vo.setLimitStart(limitStart);
		vo.setPageGroupStart(result[0]);
		vo.setPageGroupEnd(result[1]);
		vo.setPageStartNum(pageStartNum);
		vo.setArticles(articles);
		
		Gson gson = new Gson();
		String jsonData = gson.toJson(vo);			
		
		logger.debug("here3 controller: " + jsonData);
		PrintWriter writer = resp.getWriter();
		writer.print(jsonData);
		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	
}
