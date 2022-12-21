<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"></jsp:include>
        <main id="product">
            <aside>
            	<ul class="category">
                    <li>
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-shopping-bag" aria-hidden="true"></i>브랜드패션
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate10" items="${cate.cate10}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate10.cate1}&cate2=${cate10.cate2}">${cate10.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·뷰티
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate11" items="${cate.cate11}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate11.cate1}&cate2=${cate11.cate2}">${cate11.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
  					<li>
                        <a href="#">
                            <i class="fas fa-baby-carriage" aria-hidden="true"></i>유아동
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate12" items="${cate.cate12}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate12.cate1}&cate2=${cate12.cate2}">${cate12.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-utensils" aria-hidden="true"></i>식품·생필품
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate13" items="${cate.cate13}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate13.cate1}&cate2=${cate13.cate2}">${cate13.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-home" aria-hidden="true"></i>홈데코·문구·취미·반려
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate14" items="${cate.cate14}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate14.cate1}&cate2=${cate14.cate2}">${cate14.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-tv" aria-hidden="true"></i>컴퓨터·디지털·가전
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate15" items="${cate.cate15}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate15.cate1}&cate2=${cate15.cate2}">${cate15.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-running" aria-hidden="true"></i>스포츠·건강·렌탈
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate16" items="${cate.cate16}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate16.cate1}&cate2=${cate16.cate2}">${cate16.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-car" aria-hidden="true"></i>자동차·공구
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate17" items="${cate.cate17}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate17.cate1}&cate2=${cate17.cate2}">${cate17.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
					<li>
                        <a href="#">
                            <i class="fas fa-book" aria-hidden="true"></i>여행·도서·티켓·e쿠폰
                            <i class="fas fa-angle-right" aria-hidden="true">
                            </i>
                        </a>
                        <ol>
                        	<c:forEach var="cate18" items="${cate.cate18}">
                            <li>
                                <a href="/Kmarket/product/list.do?cate1=${cate18.cate1}&cate2=${cate18.cate2}">${cate18.c2Name}</a>
                            </li>
                            </c:forEach>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section class="complete">
                <nav>
                    <h1>주문완료</h1>
                    <p>
                        HOME > 장바구니 > 주문결제
                        <strong>주문완료</strong>
                    </p>
                </nav>
                <article class="message">
                    <h2>
                        고객님의 주문이 정상적으로 완료되었습니다.
                        <i class="far fa-smile" aria-hidden="true"></i>
                    </h2>
                    <p>
                        즐거운 쇼핑이 되셨습니까? 항상 고객님을 최우선으로 생각하는 케이마켓이 되겠습니다.
                    </p>
                </article>
                <!-- 상품정보 -->
                <article class="info">
                    <h1>상품정보</h1>
                    <table border="0">
                        <tr>
                            <th>상품명</th>
                            <th>상품금액</th>
                            <th>할인금액</th>
                            <th>수량</th>
                            <th>주문금액</th>
                        </tr>
                        <c:forEach var="cart" items="${prod}">
                        <tr>
                            <td>
                                <article>
                                    <img src="/home/prodImg/${cart.thumb1}" alt="">
                                    <div>
                                        <h2>
                                            <a href="/Kmarket/product/view.do?prodNo=${cart.prodNo}">${cart.prodName}</a>
                                        </h2>
                                        <p>${cart.descript}</p>
                                    </div>
                                </article>
                            </td>
                            <td>${cart.price}원</td>
                            <td>${cart.discount}원</td>
                            <td>${cart.count}원</td>
                            <td>${cart.total}원</td>
                        </tr>
                        </c:forEach>
                        <tr class="total">
                            <td colspan="4"></td>
                            <td>
                                <table>
                                    <tr>
                                        <td>총 상품금액</td>
                                        <td>
                                            <span>${vo.price}원</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>총 할인금액</td>
                                        <td>
                                            <span>-${vo.discount}원</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>배송비</td>
                                        <td>
                                            <span>${vo.delivery}원</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>총 결제금액</td>
                                        <td>
                                            <span>${vo.total}</span>원
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </article>
                <!-- 주문정보 -->
                <article class="order">
                    <h1>주문정보</h1>
                    <table border="0">
                        <tr>
                            <td>주문번호</td>
                            <td>2008101324568</td>
                            <td rowspan="3">총 결제금액</td>
                            <td rowspan="3">
                                <span>${vo.total}</span>원
                            </td>
                        </tr>
                        <tr>
                            <td>결제방법</td>
                            <td>신용카드</td>
                        </tr>
                        <tr>
                            <td>주문자/연락처</td>
                            <td>홍길동/010-1234-1234</td>
                        </tr>
                    </table>
                </article>
                <!-- 배송정보 -->
                <article class="delivery">
                    <h1>배송정보</h1>
                    <table border="0">
                        <tr>
                            <td>수취인</td>
                            <td>${sessUser.name}</td>
                            <td>주문자 정보</td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td>010-1234-1234</td>
                            <td rowspan="2">
                                홍길동
                                <br> 010-1234-1234
                            </td>
                        </tr>
                        <tr>
                            <td>배송지 주소</td>
                            <td>부산광역시 강남구 대연동 123 10층</td>
                        </tr>
                    </table>
                </article>
                <!-- 꼭 알아두세요 -->
                <article class="alert">
                    <h1>꼭 알아두세요.</h1>
                    <ul>
                        <li>
                            <span>
                                케이마켓은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 케이마켓은 상품, 거래정보 및 거래에 대하여 책임을 지지 않습니다.
                            </span>
                        </li>
                        <li>
                            <span>
                                구매주문내역, 배송상태 확인, 구매영수증 출력, 구매취소/반품/교환은 사이트 상단의 주문/배송조회에서 확인 할 수 있습니다.
                            </span>
                        </li>
                        <li>
                            <span>
                                고객님의 주문이 체결된 후 상품품절 및 단종 등에 의해 배송이 불가능할 경우, 전자상거래등에서의 소비자 보호에 관한 법률 제15조 2항에 의거하여 3영업일(공휴일 제외) 이내에 자동으로 취소될 수 있으며, 이 경우 취소 안내 메일이 고객님께 발송되오니 양지 바랍니다.
                            </span>
                        </li>
                        <li>
                            <span>
                                극히 일부 상품에 대해 수량 부족, 카드결제승인 오류 등의 사례가 간혹 있을 수 있으니 `나의쇼핑정보`에서 다시 한번 확인해 주세요.
                            </span>
                        </li>
                        <li>
                            <span>
                                현금 잔고로 구매하셨을 경우, 나의 쇼핑정보에서 입금확인이 되었는지를 다시 한번 확인해 주세요.
                            </span>
                        </li>
                        <li>
                            <span>
                                배송 주소를 추가하거나 변경, 삭제 등의 관리는 `나의쇼핑정보 > 나의정보`에서 가능합니다.
                            </span>
                        </li>
                    </ul>
                </article>
            </section>
        </main>
<jsp:include page="../_footer.jsp"></jsp:include>