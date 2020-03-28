<%--
  Created by IntelliJ IDEA.
  User: 20439
  Date: 2020/1/23
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
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
    <script src="${ctp }/assets/plugins/owl-carousel/owl.carousel.js"></script>
    <script src="${ctp }/assets/plugins/counter/jquery.countTo.js"></script>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin"
          type="text/css"/>
    <link rel="stylesheet" href="${ctp }/assets/plugins/font-awesome/css/font-awesome.css" type="text/css">
    <link id="theme_style" type="text/css" href="${ctp }/assets/css/style1.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="${ctp }/assets/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="${ctp }/assets/plugins/owl-carousel/owl.theme.css">
    <link rel="stylesheet" href="${ctp }/assets/plugins/flexslider/flexslider.css" type="text/css" media="screen"/>
    <!--jquery响应式轮播-->
    <script defer src="${ctp }/assets/plugins/flexslider/jquery.flexslider.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="/WEB-INF/same/header.jsp" %>
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb pull-left">
                        <li><a href="${ctp }">首页</a></li>
                        <li><a href="filter">筛选</a></li>
                        <li>详情</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="post">
                                <div class="post-price" id="goods_price">
                                </div>
                                <div class="post-title" id="goods_title">
                                    <h2></h2>
                                </div>
                                <div class="post-meta">
                                    <ul>
                                        <li id="goods_date"><i class="fa fa-clock-o"></i></li>
                                        <li id="goods_level"><i class="fa fa-bars"></i></li>
                                        <li id="goods_degree"><i class="fa fa-bookmark"></i> </li>
                                        <li id="master_gender"><i class="fa fa-transgender-alt"></i></li>
                                    </ul>
                                </div>
                                <div class="flexslider">
                                    <ul class="slides" id="group_img">
                                    </ul>
                                </div>
                                <div class="post-body">
                                    <h4><strong>详细描述：</strong></h4>
                                    <p id="goods_describe">
                                    </p>
                                </div>
                                <div class="post-footer">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-10">
                                            <button class="btn btn-info"><i class="fa fa-qq"></i><span id="master_qq"></span></button>
                                            <button class="btn btn-warning" data-target="#sendMessageModal"
                                                    data-toggle="modal"><i class="fa fa-envelope"></i> <span>给卖家留言</span></button>
                                        </div>
                                        <div class="col-md-6 col-xs-2">
                                            <div class="item-action pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top"
                                                           title="收藏" class="btn btn-success btn"><i
                                                            class="fa fa-heart"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                *非诚心购买请勿打扰到卖家哦！
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-header">
                                <h2>相似推荐</h2>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid featured-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.jsp"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">mdartphone</a></li>
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
                                                           title="Save Favorite" class="btn btn-default btn-md"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.jsp" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-md"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="item-ads-grid highlight-ads">
                                        <div class="item-badge-grid hot-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-2.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.jsp"><h4>Samsung Galaxy Grand Prime 530 8GB Grey</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">mdartphone</a></li>
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
                                                           title="Save Favorite" class="btn btn-default btn-md"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.jsp" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-md"><i
                                                            class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid premium-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-6.jpg"
                                                 class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail.jsp"><h4>Samsung Tab 3 V 116</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a>
                                                    , <a href="category.html">mdartphone</a></li>
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
                                                           title="Save Favorite" class="btn btn-default btn-md"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail.jsp" data-toggle="tooltip" data-placement="top"
                                                           title="Show Details" class="btn btn-success btn-md"><i
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
                <div class="col-md-4">
                    <div class="widget">
                        <div class="widget-header">
                            <h3>卖家信息</h3>
                        </div>
                        <div class="widget-body text-center">
                            <img alt="" src="assets/img/people/gie.jpg" class="seller-avatar img-responsive">
                            <h2 class="seller-name">学号：</h2>
                            <p class="seller-detail">信誉分： <strong>100</strong><br/>
                        </div>
                        <div class="widget-footer">
                            <div class="row">
                                <div class="col-md-6">
                                    <button class="btn btn-info btn-block"><i class="fa fa-whatsapp"></i> 共卖出物品 件
                                    </button>
                                </div>
                                <div class="col-md-6">
                                    <button class="btn btn-warning btn-block"><i class="fa fa-envelope"></i> 正在出售物品 件
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget">
                        <div class="widget-header">
                            <h3>TA还在卖</h3>
                        </div>
                        <div class="widget-body">
                            <ul class="trends">
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                                <li><a href="#">Title &nbsp;<span class="item-price">¥88</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@ include file="/WEB-INF/same/footer.jsp" %>
</div>

<!-- Send Message Modal -->
<div aria-labelledby="sendMessageModalLabel" role="dialog" tabindex="-1" id="sendMessageModal" class="modal fade in">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" data-dimdiss="modal" class="close" type="button"><span
                        aria-hidden="true">×</span></button>
                <h4 id="sendMessageModalLabel" class="modal-title">Send Message to Seller</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="control-label">Name:</label>
                        <input type="text" class="form-control input-lg" placeholder="Your name" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Email:</label>
                        <input type="email" class="form-control input-lg" placeholder="Your email" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="message-text">Message:</label>
                        <textarea id="message-text" class="form-control input-lg" placeholder="Your message"
                                  required></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button data-dimdiss="modal" class="btn btn-default" type="button">Close</button>
                <button class="btn btn-custom" type="button"><i class="fa fa-paper-plane"></i> Send</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        $.ajax({
            url: "${ctp }/querygoodsbyid",
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (result) {
                var item = result.extend.goods;
                $("#goods_price").append(item.goodsPrice);
                $("#goods_title h2").append(item.goodsTitle);
                var nowDate = new Date();
                var year = nowDate.getFullYear();
                var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
                var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
                var hour = nowDate.getHours()< 10 ? "0" + nowDate.getHours() : nowDate.getHours();
                var minute = nowDate.getMinutes()< 10 ? "0" + nowDate.getMinutes() : nowDate.getMinutes();
                var differ;
                if(year-item.createTime.year>0){
                    differ="&nbsp;"+(year-item.createTime.year)+"年前";
                }else if(year-item.createTime.year==0&&month-item.createTime.monthValue>0){
                    differ="&nbsp;"+(month-item.createTime.monthValue)+"个月前";
                }else if(month-item.createTime.monthValue==0&&date-item.createTime.dayOfMonth>0){
                    differ="&nbsp;"+(date-item.createTime.dayOfMonth)+"天前"
                }else if(date-item.createTime.dayOfMonth==0&&hour-item.createTime.hour>0){
                    differ="&nbsp;"+(hour-item.createTime.hour)+"小时前"
                }else{
                    differ="&nbsp;"+(minute-item.createTime.minute)+"分钟前";
                }
                $("#goods_date").append(differ);
                $("#goods_level").append(item.firstLevel.firstLevelName+'，'+item.secondLevel.secondLevelName);
                var degree;
                switch (item.goodsDegree) {
                    case 1:degree = '九五新';break;
                    case 2:degree = '九成新';break;
                    case 3:degree = '八成新';break;
                    case 4:degree = '其他';
                }
                $("#goods_degree").append(degree);
                var gender;
                switch (item.masterGender) {
                    case 1:gender = '默认';break;
                    case 2:gender = '男';break;
                    case 3:gender = '女';
                }
                $("#master_gender").append(gender);
                $.each(item.groupImg.split(","),function (index,img) {
                    $("#group_img").append('<li data-thumb="assets/img/upload_pic_package/'
                        +img+'.jpg">'+'<img alt="" src="assets/img/upload_pic_package/'
                        +img+'.jpg"/>'+'</li>');
                });
                $("#goods_describe").append(item.goodsDescribe);
                $("#master_qq").append("&nbsp;"+item.masterQq);
            }
        });
        setInterval(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails",
            animationLoop: true, //循环播放
            directionNav: true, //前后按钮
            start: function () {
                $('body').removeClass('loading');
            }
        });
        }, 0);
        // ==========tooltip initial=================
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>
</body>
</html>
