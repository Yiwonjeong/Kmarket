<%@ page  contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="./_header.jsp"></jsp:include>
        <section id="cs">
            <div class="main">
                <h1 class="title">
                    <strong>케이마켓</strong>이 도와드릴게요!
                </h1>
                <section class="notice">
                    <h1>공지사항<a href="/Kmarket/cs/notice/list.do?cate=notice">전체보기</a></h1>
                    <ul>
                    	<c:forEach var="latest" items="${latests}">
                    		<c:if test="${latest.cate eq 'notice'}">
                    		<li>
	                            <a href="#" class="title">[${latest.cateType1}] ${latest.title} // ${latest.cate}</a>
	                            <%-- <span class="date">${latest.rdate}</span>  --%>
	                            <span>
	                            	<fmt:parseDate value="${latest.rdate}" var="time" pattern="yyyy-MM-dd HH:mm:ss"/>
	                            	<fmt:formatDate value="${time}" pattern="yy.MM.dd"/>
                            	</span>
                        	</li>
                    		</c:if>
                        </c:forEach>
                    </ul>
                </section>
                <section class="faq">
                    <h1>
                        자주 묻는 질문
                        <a href="/Kmarket/cs/faq/list.do">
                            전체보기
                        </a>
                    </h1>
                    <ol>
                        <li>
                            <a href="#">
                                <span>회원</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>쿠폰이벤트</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>주문/결제</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>배송</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>취소/반품/교환</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>여행/숙박/항공</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>안전거래</span>
                            </a>
                        </li>
                    </ol>
                </section>
                <section class="qna">
                    <h1>문의하기<a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=회원">전체보기</a></h1>
                    <ul>
                    	<c:forEach var="latest" items="${latests}">
	                    	<c:if test="${latest.cate eq 'qna'}">
	                        <li>
	                            <a href="#" class="title">[${latest.cateType1}] ${latest.title} // ${latest.cate}</a>
	                                <p>
	                                    <span class="uid">${latest.uid}</span>
	                                    <span class="date">
	                                    	<fmt:parseDate value="${latest.rdate}" var="time" pattern="yyyy-MM-dd HH:mm:ss"/>
			                            	<fmt:formatDate value="${time}" pattern="yy.MM.dd"/>
	                                    </span>
	                                </p>
	                        </li>
	                        </c:if>
                        </c:forEach>
                    </ul>
                    <a href="/Kmarket/cs/qna/write.do?cate=qna&cateType1=회원" class="ask">문의글 작성 ></a>
                </section>
                <section class="tel">
                    <h1>1:1 상담이 필요하신가요?</h1>
                    <article>
                        <div>
                            <h3>고객센터 이용안내</h3>
                            <p>
                                <span>일반회원/비회원</span>
                                <br>
                                <strong>1566-0001</strong>
                                <span>(평일 09:00 ~ 18:00)</span>
                            </p>
                            <p>
                                <span>스마일클럽 전용</span>
                                <br>
                                <strong>1566-0002</strong>
                                <span>(365일 09:00 ~ 18:00)</span>
                            </p>
                        </div>
                    </article>
                    <article>
                        <div>
                            <h3>판매상담 이용안내</h3>
                            <p>
                                <span>판매고객</span>
                                <br>
                                <strong>1566-5700</strong>
                                <span>(평일 09:00 ~ 18:00)</span>
                            </p>
                            <p>
                                <a href="#">판매자 가입 및 서류 접수 안내 ></a>
                            </p>
                        </div>
                    </article>
                </section>
            </div>
        </section>
  <jsp:include page="./_footer.jsp"></jsp:include>