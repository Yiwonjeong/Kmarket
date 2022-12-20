package kr.co.kmarket.db;

public class AdminSql {

	//관리자 전체 조회
	public static final String selectProduct = "SELECT * FROM `km_product` AS a JOIN "
												+ "`km_member` AS b ON a.`seller` = b.`uid` "
												+ "WHERE `level` <= 7 "
												+ "ORDER BY `prodNo` DESC "
												+ "LIMIT ?,10 ";
	// 판매자상품만 조회
	public static final String selectProductss = "SELECT * FROM `km_product` WHERE `seller`=? "
			 										+ "order by `prodNo` desc LIMIT ?, 10";

	public static final String selectProductKeyword = "SELECT `prodNo`,`prodName`,`company` FROM `km_product` "
													+ "WHERE `seller` = ? and "
													+ "(`prodName` LIKE ? OR "
													+ "`company` LIKE ? OR "
													+ "`prodNo` LIKE ?) "
													+ "ORDER BY `prodNo` DESC "
													+ "LIMIT 0,10";

	public static final String SELECT_ADMIN_LIST = "SELECT * FROM `km_product` WHERE `seller`=? "
												 + "order by `prodNo` desc LIMIT ?, 10";
	
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(`prodNo`) FROM `km_product` "
												  + "where `seller`=? ";
	
	public static final String DELECT_PRODUCT = "delete from `km_product` where `prodNo`=? ";
}
