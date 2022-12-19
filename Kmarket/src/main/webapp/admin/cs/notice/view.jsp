<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/admin/_header.jsp"></jsp:include>
<!DOCTYPE html>
        <main>
            <aside>
                 <!-- Global Navigation Bar -->
                <ul id="gnb">
                    <li>
                        <a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
                        <ol>
                            <li><a href="#">기본환경설정</a></li>
                            <li><a href="#">배너관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-store" aria-hidden="true"></i>상점관리</a>
                        <ol>
                            <li><a href="#">판매자현황</a></li>
                            <li><a href="#">재고관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-users" aria-hidden="true"></i>회원관리</a>
                        <ol>
                            <li><a href="#">회원현황</a></li>
                            <li><a href="#">포인트관리</a></li>
                            <li><a href="#">비회원관리</a></li>
                            <li><a href="#">접속자집계</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-box-open" aria-hidden="true"></i>상품관리</a>
                        <ol>
                            <li><a href="#">상품현황</a></li>
                            <li><a href="#">상품등록</a></li>
                            <li><a href="#">재고관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>주문관리</a>
                        <ol>
                            <li><a href="#">주문현황</a></li>
                            <li><a href="#">매출현황</a></li>
                            <li><a href="#">결제관리</a></li>
                            <li><a href="#">배송관리</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>고객센터</a>
                        <ol>
                            <li><a href="/Kmarket/admin/cs/notice/list.do">공지사항</a></li>
                            <li><a href="/Kmarket/admin/cs/faq/list.do">자주묻는 질문</a></li>
                            <li><a href="/Kmarket/admin/cs/qna/list.do">문의하기</a></li>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section id="cs">
            	<div class="notice">
	                <nav>
	                    <h3>공지사항 보기</h3>
	                    <p>
	                        HOME > 고객센터 >
	                        <strong>공지사항</strong>
	                    </p>
	                </nav>
	                <section class="view">
	                    <article>
	                        <nav>
	                            <h2 class="title">[안내] 해외결제 사칭 문자 주의</h2>
	                            <span class="date">2022.11.20</span>
	                        </nav>
	                        <div class="content">
	                            <p>
	                                안녕하세요. G마켓입니다.
	                                <br>
	                                G마켓 해외직구를 사칭하는 피싱 문자가 최근 다시 신고되고 있어 주의 안내드립니다.
	                                <br>
	                                아래와 같이 G마켓 해외직구 승인결제 피싱 문자 또는 발신번호 006, 002 등으로
	                                시작하는 피싱 문자를 수신하신 고객님께서는 통화 또는 문자 내 기재된 번호/링크
	                                등을 클릭하지 않도록 주의하여 주시기 바랍니다.
	                                <br>
	                                <br>
	                            </p>
	                            <p>
	                                ※ 피싱 관련 피해신고
	                                <br>
	                                <br>
	                                ▶ 경찰청 사이버수사국 (국번없이)182 : http://cyberbureau.police.go.kr
	                                <br>
	                                ▶ KISA 인터넷침해대응센터 (국번없이)118 : http://www.krcert.or.kr
	                                <br>
	                                감사합니다
	                                <br>
	                            </p>
	                        </div>
	                        <a href="#" class="btnList">목록</a>
	                    </article>
	                </section>
                </div>
            </section>
        </main>
<jsp:include page="/admin/_footer.jsp"></jsp:include>