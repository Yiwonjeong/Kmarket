<%@ page  contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<jsp:include page="../_header.jsp"></jsp:include>
        <section id="cs">
            <div class="qna">
                <nav>
                    <div>
                        <p>
                            홈
                            <span>></span>
                            문의하기
                        </p>
                    </div>
                </nav>
                <section class="list">
                    <aside>
                        <h2>문의하기</h2>
                        <ul>
                            <li class="on">
                                <a href="/Kmarket/cs/qna/list.do?cateType1=회원">회원</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=쿠폰/이벤트">쿠폰/이벤트</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=주문/결제">주문/결제</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=배송">배송</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=취소/반품/교환">취소/반품/교환</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=여행/숙박/항공">여행/숙박/항공</a>
                            </li>
                            <li>
                                <a href="/Kmarket/cs/qna/list.do?cate=qna&cateType1=안전거래">안전거래</a>
                            </li>
                        </ul>
                    </aside>
                    <article>
                        <nav>
                            <h1>회원</h1>
                            <h2>회원관련 문의 내용입니다.</h2>
                        </nav>
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="#">[가입] 가입 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[탈퇴] 탈퇴 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[회원정보] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[로그인] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[로그인] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[로그인] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[회원정보] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[회원정보] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[탈퇴] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">[탈퇴] 회원정보 문의내용</a>
                                    </td>
                                    <td>chh**</td>
                                    <td>2022.11.21</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="page">
                            <a href="#" class="prev">이전</a>
                            <a href="#" class="num on">1</a>
                            <a href="#" class="num">2</a>
                            <a href="#" class="num">3</a>
                            <a href="#" class="next">다음</a>
                        </div>
                        <a href="/Kmarket/cs/qna/write.do?cate=${cate}&cateType1=${cateType1}" class="btnWrite">문의하기</a>
                    </article>
                </section>
            </div>
        </section>
  <jsp:include page="../_footer.jsp"></jsp:include>