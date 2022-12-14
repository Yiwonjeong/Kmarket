<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../_header.jsp"></jsp:include>
        <main id="product">
            <aside>
                <ul class="category">
                    <li>
                        <i class="fa fa-bars" aria-hidden="true"></i>카테고리
                    </li>
                        <li>
                        <a href="#">
                            <i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·뷰티
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">남성의류</a>
                            </li>
                            <li>
                                <a href="#">여성의류</a>
                            </li>
                            <li>
                                <a href="#">잡화</a>
                            </li>
                            <li>
                                <a href="#">뷰티</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-laptop" aria-hidden="true"></i>가전·디지털
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">노트북/PC</a>
                            </li>
                            <li>
                                <a href="#">가전</a>
                            </li>
                            <li>
                                <a href="#">휴대폰</a>
                            </li>
                            <li>
                                <a href="#">기타</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-utensils" aria-hidden="true"></i>식품·생필품
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">신선식품</a>
                            </li>
                            <li>
                                <a href="#">가공식품</a>
                            </li>
                            <li>
                                <a href="#">건강식품</a>
                            </li>
                            <li>
                                <a href="#">생필품</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-home" aria-hidden="true"></i>홈·문구·취미
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">가구/DIY</a>
                            </li>
                            <li>
                                <a href="#">침구·커튼</a>
                            </li>
                            <li>
                                <a href="#">생활용품</a>
                            </li>
                            <li>
                                <a href="#">사무용품</a>
                            </li>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section class="cart">
                <nav>
                    <h1>장바구니</h1>
                    <p>
                        HOME > 
                        <span>패션·의류·뷰티</span>
                         > 
                        <strong>장바구니</strong>
                    </p>
                </nav>
               <form action="#">
                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"></th>
                            <th>상품명</th>
                            <th>총수량</th>
                            <th>판매가</th>
                            <th>할인</th>
                            <th>포인트</th>
                            <th>배송비</th>
                            <th>소계</th>
                        </tr>
                        <tr class="empty">
                            <td colspan="7">장바구니에 상품이 없습니다.</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="1"></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h2><a href="#">상품명</a></h2>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>5%</td>
                            <td>270</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="1"></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h2><a href="#">상품명</a></h2>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>5%</td>
                            <td>270</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="1"></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h2><a href="#">상품명</a></h2>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>5%</td>
                            <td>270</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                    </table>
                    <input type="button" name="del" value="선택삭제">
                    <div class="total">
                        <h2>전체합계</h2>
                        <table>
                            <tr>
                                <td>상품수</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>상품금액</td>
                                <td>27,000</td>
                            </tr>
                            <tr>
                                <td>할인금액</td>
                                <td>-1,000</td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>포인트</td>
                                <td>260</td>
                            </tr>
                            <tr>
                                <td>전체주문금액</td>
                                <td>26,000</td>
                            </tr>
                        </table>
                        <input type="submit" value="주문하기">
                    </div>
               </form>
            </section>
        </main>
<jsp:include page="../_footer.jsp"></jsp:include>