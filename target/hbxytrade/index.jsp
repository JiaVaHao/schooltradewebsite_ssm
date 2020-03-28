<%--
  Created by IntelliJ IDEA.
  User: 20439
  Date: 2020/1/9
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    session.setAttribute("studentId", 17851079);
    session.setAttribute("name", "Jiang");
    pageContext.setAttribute("ctp", request.getContextPath());
%>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    <title>校园二手交易网</title>
    <script src="${ctp }/static/jquery/jquery-3.4.1.min.js"></script>
    <link href="${ctp }/static/css/bootstrap.css" rel="stylesheet">
    <script src="${ctp }/static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin"
          type="text/css"/>
    <!-- Essential styles -->
    <link rel="stylesheet" href="${ctp }/assets/plugins/font-awesome/css/font-awesome.css" type="text/css">

    <!-- Trade styles -->
    <link id="theme_style" type="text/css" href="${ctp }/assets/css/style1.css" rel="stylesheet" media="screen">

    <!-- Assets -->
    <link rel="stylesheet" href="${ctp }/assets/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="${ctp }/assets/plugins/owl-carousel/owl.theme.css">

</head>
<body>
<div class="wrapper">
    <%@ include file="/WEB-INF/same/header.jsp" %>
    <section class="hero">
        <div class="container text-center">
            <h2 class="hero-title">找寻自己喜欢的物品</h2>
            <p class="hero-description hidden-xs">在校园二手交易网站上寻找心仪之物，我将会给你提供少许建议。</p>
            <div class="row hero-search-box">
                <form>
                    <div class="col-md-4 col-sm-4 search-input">
                        <input type="text" class="form-control input-lg search-first" placeholder="在此处输入你想要的东西">
                    </div>
                    <div class="col-md-4 col-sm-4 search-input">
                        <select class="form-control input-lg search-second">
                            <option selected="selected">所有</option>
                            <option>衣物</option>
                            <option id="digital_products">数码产品</option>
                            <option id="digital_accessories">数码配件</option>
                            <option id="electrical_car">电动车</option>
                            <option id="fun">娱乐</option>
                            <option id="book">书本</option>
                            <option id="show">美妆</option>
                            <option id="uses">生活用品</option>
                        </select>
                    </div>
                    <div class="col-md-4 col-sm-4 search-input">
                        <button class="btn btn-custom btn-block btn-lg"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-8">
                    <div class="row">
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut" id="clothes">
                                <a href="javascript:void(0)"><i class="fa fa-female shortcut-icon icon-violet"></i></a>
                                <a href="javascript:void(0)"><h3>衣物</h3></a>
                                <span class="total-items">52,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-mobile-phone shortcut-icon icon-dark-blue"></i></a>
                                <a href="category.html"><h3>数码产品</h3></a>
                                <span class="total-items">234,567</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-gears shortcut-icon icon-light-blue"></i></a>
                                <a href="category.html"><h3>数码配件</h3></a>
                                <span class="total-items">234,567</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-motorcycle shortcut-icon icon-green"></i></a>
                                <a href="category.html"><h3>电动车</h3></a>
                                <span class="total-items">25,366</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i
                                        class="fa fa-soccer-ball-o shortcut-icon icon-orange"></i></a>
                                <a href="category.html"><h3>娱乐</h3></a>
                                <span class="total-items">415,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-book shortcut-icon icon-brown"></i></a>
                                <a href="category.html"><h3>书本</h3></a>
                                <span class="total-items">152,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-diamond shortcut-icon" style="color: gray"></i></a>
                                <a href="category.html"><h3>美妆</h3></a>
                                <span class="total-items">152,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category.html"><i class="fa fa-wrench shortcut-icon icon-light-green"></i></a>
                                <a href="category.html"><h3>生活用品</h3></a>
                                <span class="total-items">152,546</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-header">
                                <h2>猜你喜欢</h2>
                            </div>
                            <div id="featured-products" class="owl-carousel owl-carousel-featured">
                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid featured-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">Smartphone</a></li>
                                                <li class="item-location"><a href="category.html"><i
                                                        class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="Save Favorite" class="btn btn-default btn-sm"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.html" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-sm"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid premium-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-6.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.html"><h4>Samsung Tab 3 V 116</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">电脑</a></li>
                                                <li class="item-location"><a href="category.html"><i
                                                        class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="Save Favorite" class="btn btn-default btn-sm"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.html" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-sm"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid highlight-ads">
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-7.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.html"><h4>Sony Experia Z2 LTE</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">Smartphone</a></li>
                                                <li class="item-location"><a href="category.html"><i
                                                        class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="Save Favorite" class="btn btn-default btn-sm"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.html" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-sm"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid hot-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">Smartphone</a></li>
                                                <li class="item-location"><a href="category.html"><i
                                                        class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="Save Favorite" class="btn btn-default btn-sm"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.html" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-sm"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid featured-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">Smartphone</a></li>
                                                <li class="item-location"><a href="category.html"><i
                                                        class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="Save Favorite" class="btn btn-default btn-sm"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.html" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-sm"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="widget">
                        <div class="widget-header">
                            <h3>欢迎你，<%=session.getAttribute("name") %>同学</h3>
                        </div>
                        <br/>
                        <div class="widget-header">
                            <h3>我是买家</h3>
                        </div>
                        <div class="widget-body">
                            <div class="list-group">
                                <a href="filter" class="list-group-item">我要买</a>
                                <a href="#" class="list-group-item">查看购买订单</a>
                                <a href="#" class="list-group-item">收藏</a>
                            </div>
                        </div>
                        <div class="widget-header">
                            <h3>我是卖家</h3>
                        </div>
                        <div class="widget-body">
                            <div class="list-group">
                                <a href="sell" class="list-group-item">我要卖</a>
                                <a href="#" class="list-group-item">拍卖物品</a>
                                <a href="manage" class="list-group-item">管理物品</a>
                                <a href="#" class="list-group-item">查看出售订单</a>
                                <a href="#" class="list-group-item">我的收入</a>
                            </div>
                        </div>
                    </div>
                    <div class="widget">
                        <div class="widget-header">
                            <h3>新增</h3>
                        </div>
                        <div class="widget-body">
                            <ul class="trends">
                                <li><a href="#">电脑 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">手表 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">衣服 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">鞋子 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">耳机 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">球类 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">口红 &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="counter">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-cart-plus"></i></span>
                        <div data-refresh-interval="80" data-speed="3000" data-to="639" data-from="0"
                             class="item-count">639
                        </div>
                        <span class="item-info">今日新增商品数</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-balance-scale"></i></span>
                        <div data-refresh-interval="50" data-speed="3000" data-to="230" data-from="0"
                             class="item-count">230
                        </div>
                        <span class="item-info">今日成交单数</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-cubes"></i></span>
                        <div data-refresh-interval="100" data-speed="3000" data-to="7803" data-from="0"
                             class="item-count">7803
                        </div>
                        <span class="item-info">商品总数</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-users"></i></span>
                        <div data-refresh-interval="80" data-speed="3000" data-to="60" data-from="0"
                             class="item-count">60
                        </div>
                        <span class="item-info">在线用户数</span>
                    </div>
                </div>
            </div>
        </div> <!-- / .counter -->
    </div>
    <%@ include file="/WEB-INF/same/footer.jsp" %>
</div>
<!-- Essentials -->
<script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
<script src="assets/plugins/counter/jquery.countTo.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        // ===========Featured Owl Carousel============
        if ($(".owl-carousel-featured").length > 0) {
            $(".owl-carousel-featured").owlCarousel({
                items: 3,
                lazyLoad: true,
                pagination: true,
                autoPlay: 5000,
                stopOnHover: true
            });
        }

        // ==================Counter====================
        $('.item-count').countTo({
            formatter: function (value, options) {
                return value.toFixed(options.decimals);
            },
            onUpdate: function () {
                console.debug(this);
            },
            onComplete: function () {
                console.debug(this);
            }
        });
    });

    $("#clothes a").click(function () {

        window.location.href = "filter";
    })

</script>
</body>
</html>
