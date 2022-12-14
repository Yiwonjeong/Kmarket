<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kmarket::main layout</title>
    <link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico" />
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <link rel="stylesheet" href="/Kmarket/css/common.css">
    <link rel="stylesheet" href="/Kmarket/css/style.css">
    <link rel="stylesheet" href="/Kmarket/product/css/product.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".slider > ul").bxSlider({
                easing: "linear",
            });
        });

        $(function () {
            var best = $("aside > .best");

            $(window).scroll(function () {
                var t = $(this).scrollTop();

                if (t > 620) {
                best.css({
                    position: "fixed",
                    top: "0",
                });
                } else {
                best.css({ position: "static" });
                }
            });
        });
    </script>
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
                <c:choose>
                	<c:when test="${not empty sessUser}">
	                	<c:if test="${sessUser.type eq '1'}">
	                		<a><span>${sessUser.name}</span> ???, ???????????????</a>
	                	</c:if>
	                	<c:if test="${sessUser.type eq '2'}">
	                		<a><span>${sessUser.manager}</span> ???, ???????????????</a>
	                	</c:if>
	                	<a href="/Kmarket/member/logout.do">????????????</a>
		                <a href="#">???????????????</a>
		                <a href="/Kmarket/product/cart.do">
		                	<i class="fa fa-shopping-cart" aria-hidden="true"></i>????????????
		                </a>
	                </c:when>
	                <c:otherwise>
	                	<a href="/Kmarket/member/login.do">?????????</a>
	                    <a href="/Kmarket/member/join.do">????????????</a>
	                    <a href="#">???????????????</a>
	                    <a href="/Kmarket/product/cart.do">
	                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	                        ????????????
	                    </a>
	                </c:otherwise>
                </c:choose>
	            </div>
                
            </div>
            <div class="logo">
                <div>
                    <a href="/Kmarket/">
                        <img src="/Kmarket/img/header_logo.png" alt="????????????">
                    </a>
                    <form action="#">
                        <input type="text" name="search">
                        <button>
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </form>
                </div>
            </div>
            <div class="menu">
                <div>
                    <ul>
                        <li><a href="#">????????????</a></li>
                        <li><a href="#">????????????</a></li>
                        <li><a href="#">????????????</a></li>
                        <li><a href="#">????????????</a></li>
                        <li><a href="#">????????????</a></li>
                    </ul>
                    <ul>
                        <li><a href="/Kmarket/cs/notice/list.do">????????????</a></li>
                        <li><a href="/Kmarket/cs/faq/list.do">??????????????????</a></li>
                        <li><a href="/Kmarket/cs/qna/write.do">????????????</a></li>
                        <li><a href="/Kmarket/cs/index.do">????????????</a></li>
                    </ul>
                </div>
            </div>
        </header>