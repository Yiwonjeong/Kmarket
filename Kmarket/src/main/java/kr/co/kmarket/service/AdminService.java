package kr.co.kmarket.service;

import java.util.List;

import kr.co.kmarket.dao.AdminDAO;
import kr.co.kmarket.dao.ProductDAO;
import kr.co.kmarket.vo.ProductVO;

public enum AdminService {
	
	INSTANCE;
	private AdminDAO dao;
	private AdminService() { dao = new AdminDAO(); }
	
	// product 상품 리스트 불러오기
	public ProductVO selectProducts() {
		return dao.selectProducts();
	}
}
