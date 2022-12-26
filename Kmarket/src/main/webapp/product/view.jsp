<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"></jsp:include>
<script>

	$(function() {
		
		let num = 1;
		
		$('button[class=increase]').click(function(){
			num++;
			$('input[name=num]').val(num);
			
			let totalPrice = ${product.sellPrice}*(num)+${product.delivery};
			
			$('.totalPrice').text(totalPrice);
		});
		
		$('button[class=decrease]').click(function(){
			if(num == 1){
				return;
			}
			num--;
			$('input[name=num]').val(num);
			
			let totalPrice = ${product.sellPrice}*(num)+${product.delivery};
			
			$('.totalPrice').text(totalPrice);
		});
		
		$('.cart').click(function() {
			
			let prodNo = $(this).attr('data-no');
			let uid = $(this).attr('data-uid');
			let count = $('input[name=num]').val();			
			
			if(uid == ''){
				alert('비회원은 이용할 수 없습니다.');
				return false;
			}else {
				$.ajax({
					url : '/Kmarket/product/updateCart.do',
					method : 'get',
					data : {"prodNo":prodNo, "uid":uid, "count":count },
					dataType : 'json',
					success : function(data) {
						if(data.result == 1){
							let message = confirm('상품이 장바구니에 추가되었습니다. 확인하시겠습니까?');
							if(message){
								location.href = "/Kmarket/product/cart.do?uid="+uid;
							}
						}else{
							alert('장바구니에 담지 못했습니다.');
						}
					}
				});
			}
		});
		
		$('.order').click(function(){
			
			let uid = $(this).attr('data-uid');
			
			if(uid == ''){
				alert('비회원은 구입할 수 없습니다.');
				return false;
			}else {
				let prodNo = $(this).attr('data-no');
				let uid = $(this).attr('data-uid');
				let count = $('input[name=num]').val();
				
				location.href = "/Kmarket/product/order.do?prodNo="+prodNo+"&count="+count;	
			}
		});
	});
	
</script>
            </aside>
            <section class="view">
                <nav>
                    <h1>상품보기</h1>
                    <p>
                        HOME >
                        <span>${product.c1Name}</span>
                         > 
                        <strong>${product.c2Name}</strong>
                    </p>
                </nav>
                <article class="info">
                    <div class="image">
                        <img src="/home/prodImg/${product.thumb2}" alt="상품이미지thumb2">
                    </div>
                    <div class="summary">
                        <nav>
                            <h1>${product.company}</h1>
                            <h2>
                                상품번호 : 
                                <span>${product.prodNo}</span>
                            </h2>
                        </nav>
                        <nav>
                            <h3>${product.prodName}</h3>
                            <p>${product.descript}</p>
                            <h5 class="rating star4">
                                <a href="#">상품평보기</a>
                            </h5>
                        </nav>
                        <nav>
                        	<c:choose>
                        	<c:when test="${product.discount ne 0}">
                            <div class="org_price">
                                <del>${product.price}</del>
                                <span>${product.discount}%</span>
                            </div>
                            <div class="dis_price">
                                <ins>${product.sellPrice}</ins>
                            </div>
                            </c:when>
                            <c:otherwise>
                            <div class="dis_price">
                                <ins>${product.sellPrice}</ins>
                            </div>
                            </c:otherwise>
                            </c:choose>
                        </nav>
                        <nav>
                        	<c:choose>
                        	<c:when test="${product.delivery eq 0}">
                            <span class="freeDelivery">무료배송</span>
                            </c:when>
                            <c:otherwise>
                            <span class="delivery">배송비 ${product.delivery}원</span>
                            </c:otherwise>
                            </c:choose>
                            
                            <span class="arrival">모레(금) 7/8 도착예정</span>
                            <span class="desc">본 상품은 국내배송만 가능합니다.</span>
                        </nav>
                        <nav>
                            <span class="card cardfree">
                                <i>아이콘</i>무이자할부
                            </span>
                            <span class="card cardadd">
                                <i>아이콘</i>&nbsp&nbsp카드추가혜택
                            </span>
                        </nav>
                        <nav>
                            <span class="origin">원산지-상세설명 참조</span>
                        </nav>
                        <img src="../img/vip_plcc_banner.png" alt="적립!" class="banner">
                        <div class="count">
                            <button class="decrease">-</button>
                            <input type="text" name="num" value="1" readonly>
                            <button class="increase">+</button>
                        </div>
                        <div class="total">
                            <span class="totalPrice">${product.sellPrice+product.delivery}</span>
                            <em>총 상품금액</em>
                        </div>
                        <div class="button">
                            <input type="button" class="cart" data-no="${product.prodNo}" data-uid="${sessUser.uid}" value="장바구니">
                            <input type="button" class="order" data-no="${product.prodNo}" data-uid="${sessUser.uid}" value="구매하기">
                        </div>
                    </div>
                </article>
                <article class="detail">
                    <nav><h1>상품정보</h1></nav>
                    <img src="/home/prodImg/${product.thumb3}" alt="thumb3">
                    <img src="/home/prodImg/${product.thumb3}" alt="detail">
                    <img src="/home/prodImg/${product.thumb3}" alt="detail">
                </article>
                <article class="notice">
                    <nav>
                        <h1>상품 정보 제공 고시</h1>
                        <p>[전자상거래에 관한 상품정보 제공에 관한 고시] 항목에 의거 등록된 정보입니다.</p>
                    </nav>
                    <table>
                        <tr>
                            <td>상품번호</td>
                            <td>${product.prodNo}</td>
                        </tr>
                        <tr>
                            <td>상품상태</td>
                            <td>${product.status}</td>
                        </tr>
                        <tr>
                            <td>부가세 면세여부</td>
                            <td>${product.duty}</td>
                        </tr>
                        <tr>
                            <td>영수증발행</td>
                            <td>${product.receipt}</td>
                        </tr>
                        <tr>
                            <td>사업자구분</td>
                            <td>${product.bizType}</td>
                        </tr>
                        <tr>
                            <td>브랜드</td>
                            <td>${product.company}</td>
                        </tr>
                        <tr>
                            <td>원산지</td>
                            <td>${product.origin}</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>제품소재</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>색상</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>치수</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>제소사/수입국</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>제조국</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>취급시 주의사항</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>제조연월</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>품질보증기준</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>A/S 책임자와 전화번호</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td>주문후 예상 배송기간</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                구매, 교환, 반품, 배송, 설치 등과 관련하여 추가비용, 제한조건 등의 특이사항이 있는 경우
                            </td>
                        </tr>
                    </table>
                    <p class="notice">
                        소비자가 전자상거래등에서 소비자 보호에 관한 법률 제 17조 제1항 또는 제3항에 따라 청약철회를 하고
                        동법 제 18조 제1항 에 따라 청약철회한 물품을 판매자에게 반환하였음에도 불구 하고 결제 대금의
                        환급이 3영업일을 넘게 지연된 경우, 소비자 는 전자상거래등에서 소비자보호에 관한 법률 제18조
                        제2항 및 동법 시행령 제21조 2에 따라 지연일수에 대하여 전상법 시행령으로 정하는 이율을 곱하여
                        산정한 지연이자(“지연배상금”)를 신청할 수 있습니다. 아울러, 교환∙반품∙보증 및 결제대금의
                        환급신청은 [나의쇼핑정보]에서 하실 수 있으며, 자세한 문의는 개별 판매자에게 연락하여 주시기 바랍니다.
                    </p>
                </article>
                <article class="review">
                    <nav><h1>상품리뷰</h1></nav>
                    <ul>
                        <li>
                            <div>
                                <h5 class="rating star4">상품평</h5>
                                <span>seo****** 2018-07-10</span>
                            </div>
                            <h3>상품명1/BLUE/L</h3>
                            <p> 가격대비 정말 괜찮은 옷이라 생각되네요 핏은 음...제가 입기엔 어깨선이 맞고 루즈핏이라 하기도 좀 힘드네요.
                                아주 약간 루즈한정도...?그래도 이만한 옷은 없다고 봅니다 깨끗하고 포장도 괜찮고 다음에도 여기서 판매하는
                                제품들을 구매하고 싶네요 정말 만족하고 후기 남깁니다 많이 파시길 바래요 ~ ~ ~
                            </p>
                        </li>
                        <li>
                            <div>
                                <h5 class="rating star4">상품평</h5>
                                <span>seo****** 2018-07-10</span>
                            </div>
                            <h3>상품명1/BLUE/L</h3>
                            <p> 가격대비 정말 괜찮은 옷이라 생각되네요 핏은 음...제가 입기엔 어깨선이 맞고 루즈핏이라 하기도 좀 힘드네요.
                                아주 약간 루즈한정도...?그래도 이만한 옷은 없다고 봅니다 깨끗하고 포장도 괜찮고 다음에도 여기서 판매하는
                                제품들을 구매하고 싶네요 정말 만족하고 후기 남깁니다 많이 파시길 바래요 ~ ~ ~
                            </p>
                        </li>
                        <li>
                            <div>
                                <h5 class="rating star4">상품평</h5>
                                <span>seo****** 2018-07-10</span>
                            </div>
                            <h3>상품명1/BLUE/L</h3>
                            <p> 가격대비 정말 괜찮은 옷이라 생각되네요 핏은 음...제가 입기엔 어깨선이 맞고 루즈핏이라 하기도 좀 힘드네요.
                                아주 약간 루즈한정도...?그래도 이만한 옷은 없다고 봅니다 깨끗하고 포장도 괜찮고 다음에도 여기서 판매하는
                                제품들을 구매하고 싶네요 정말 만족하고 후기 남깁니다 많이 파시길 바래요 ~ ~ ~
                            </p>
                        </li>
                        <li>
                            <div>
                                <h5 class="rating star4">상품평</h5>
                                <span>seo****** 2018-07-10</span>
                            </div>
                            <h3>상품명1/BLUE/L</h3>
                            <p> 가격대비 정말 괜찮은 옷이라 생각되네요 핏은 음...제가 입기엔 어깨선이 맞고 루즈핏이라 하기도 좀 힘드네요.
                                아주 약간 루즈한정도...?그래도 이만한 옷은 없다고 봅니다 깨끗하고 포장도 괜찮고 다음에도 여기서 판매하는
                                제품들을 구매하고 싶네요 정말 만족하고 후기 남깁니다 많이 파시길 바래요 ~ ~ ~
                            </p>
                        </li>
                        <li>
                            <div>
                                <h5 class="rating star4">상품평</h5>
                                <span>seo****** 2018-07-10</span>
                            </div>
                            <h3>상품명1/BLUE/L</h3>
                            <p> 가격대비 정말 괜찮은 옷이라 생각되네요 핏은 음...제가 입기엔 어깨선이 맞고 루즈핏이라 하기도 좀 힘드네요.
                                아주 약간 루즈한정도...?그래도 이만한 옷은 없다고 봅니다 깨끗하고 포장도 괜찮고 다음에도 여기서 판매하는
                                제품들을 구매하고 싶네요 정말 만족하고 후기 남깁니다 많이 파시길 바래요 ~ ~ ~
                            </p>
                        </li>
                    </ul>
                    <div class="paging">
                        <span class="prev">
                            <a href="#">< 이전</a>
                        </span>
                        <span class="num">
                            <a href="#" class="on">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">6</a>
                            <a href="#">7</a>
                        </span>
                        <span class="next">
                            <a href="#">다음 ></a>
                        </span>
                    </div>
                </article>
            </section>
        </main>
<jsp:include page="../_footer.jsp"></jsp:include>