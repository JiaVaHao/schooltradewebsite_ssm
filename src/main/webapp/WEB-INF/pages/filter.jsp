<%--
  ~  Copyright(c)2020
  ~  项目名称:hbxytrade
  ~  文件名称:filter.jsp
  ~  Date:2020/3/28 下午7:13
  ~  Author:Code Ant Jiang
  ~  *请勿抄袭或作毕设，抄袭必究！
  --%>

<%--
  Created by IntelliJ IDEA.
  User: 20439
  Date: 2020/1/16
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
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
</head>
<body>
<div class="wrapper">
    <%@ include file="/WEB-INF/same/header.jsp" %>
    <section class="category-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <ul class="breadcrumb pull-left">
                        <li><a href="${ctp }">首页</a></li>
                        <li>筛选</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9" id="filter">
                    <div class="category-header no-margin-bottom">
                        <div class="row">
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">一级分类：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="first_level_ul">
                                    </ul>
                                </div>
                            </div>
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">二级分类：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="second_level_ul">
                                    </ul>
                                </div>
                            </div>
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">新旧程度：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="goods_degree">
                                        <li value="0"><a class="selected">全部</a></li>
                                        <li value="1"><a href="#">九五新</a></li>
                                        <li value="2"><a href="#">九成新</a></li>
                                        <li value="3"><a href="#">八成新</a></li>
                                        <li value="4"><a href="#">其他</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">物主性别：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="master_gender">
                                        <li value="0"><a class="selected">全部</a></li>
                                        <li value="2"><a href="#">男</a></li>
                                        <li value="3"><a href="#">女</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">交易方式：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="trade_type">
                                        <li value="0"><a class="selected">全部</a></li>
                                        <li value="1"><a href="#">一口价</a></li>
                                        <li value="2"><a href="#">可砍价</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="filter">
                                <label class="col-md-2 col-xs-12 control-label">价格区间：</label>
                                <div class="col-md-10 col-md-offset-0 col-xs-12 col-xs-offset-2">
                                    <ul class="nav navbar-nav col-xs-12" id="price_between">
                                        <li value="0"><a class="selected">全部</a></li>
                                        <li value="1"><a href="#">1～10</a></li>
                                        <li value="2"><a href="#">10～100</a></li>
                                        <li value="3"><a href="#">100～500</a></li>
                                        <li value="4"><a href="#">500～1000</a></li>
                                        <li value="5"><a href="#">1000～5000</a></li>
                                        <li value="6"><a href="#">5000～10000</a></li>
                                        <li value="7"><a href="#">10000～99999</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="search-results-box">
                        <div class="row">
                            <div class="col-md-12 search-results">
                                搜索到 ： <span id="item_num"></span> 件商品
                            </div>
                        </div>
                    </div>
                    <div class="list-results">
                        <div class="row">
                            <div class="col-md-12" id="goods_items">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-right" id="page_nav">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-right" id="page_info">
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
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
                                <a href="filter" class="list-group-item"
                                   style="background-color: #2aabd2;color: white">我要买</a>
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
    <%@ include file="/WEB-INF/same/footer.jsp" %>
</div>
<script type="text/javascript">

    $(function () {
        $('#first_level_ul').empty();
        $('#first_level_ul').append('<li value="0"><a class="selected">全部</a></li>');
        $.ajax({
            url: "${ctp }/firstlevels",
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                $.each(result.extend.firstlevels, function () {
                    var aEle = $("<a href='#'></a>").append(this.firstLevelName);
                    var liEle = $('<li></li>').append(aEle).attr('value', this.firstLevelId);
                    liEle.appendTo('#first_level_ul');
                });
                getSecondLevel();
            }
        });
    });

    function getSecondLevel() {
        $('#second_level_ul').empty();
        $('#second_level_ul').append('<li value="0"><a class="selected">全部</a></li>');
        var firstLevelId = $('#first_level_ul a[class=\'selected\']').parent("li").attr('value');
        $.ajax({
            url: "${ctp }/secondlevels/" + firstLevelId,
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                $.each(result.extend.secondlevels, function () {
                    var aEle = $('<a href="#"></a>').append(this.secondLevelName);
                    var liEle = $('<li></li>').append(aEle).attr('value', this.secondLevelId);
                    liEle.appendTo('#second_level_ul');
                })
            }
        });
        to_page(1);
    }

    $(document).on("click", "#first_level_ul", function () {
        getSecondLevel();
    });

    //为filter下的所有a标签添加单击事件
    $(document).on("click", "#filter div[class=\"filter\"] a", function () {
        $(this).parents("ul").children("li").each(function () {
            $(this).find("a").removeClass("selected");
        });
        $(this).addClass("selected");
        //alert(ReSelected()); //返回选中结果
        to_page(1)
    });

    function to_page(pn) {
        <%--<%
        Cookie[] cookies=request.getCookies();
        %>
        if((<%=cookies[1].getValue()%>) != null){
            firstLevelId = parseInt(<%=cookies[1].getValue()%>);
            <%
            cookies[1].setMaxAge(0);
            response.addCookie(cookies[1]);
            %>
            alert(firstLevelId);
        }else{--%>
        var firstLevelId = $('#first_level_ul a[class=\'selected\']').parent("li").attr('value');
        var secondLevelId = $('#second_level_ul a[class=\'selected\']').parent("li").attr('value');
        var goodsDegree = $('#goods_degree a[class=\'selected\']').parent("li").attr('value');
        var masterGender = $('#master_gender a[class=\'selected\']').parent("li").attr('value');
        var tradeType = $('#trade_type a[class=\'selected\']').parent("li").attr('value');
        $.ajax({
            url: "${ctp }/querygoodsbyfilter",
            type: "GET",
            data: {
                "pn": pn, "firstLevelId": firstLevelId, "secondLevelId": secondLevelId,
                "goodsDegree": goodsDegree, "masterGender": masterGender,
                "tradeType": tradeType
            },
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (result) {
                //商品信息
                build_goods_table(result);
                //分页信息
                build_page_info(result);
                //分页数据
                bulid_page_nav(result);
            }
        });
    }

    function build_goods_table(result) {
        $("#goods_items").empty();
        $("#item_num").text('');
        $('#item_num').append(result.extend.pageInfo.total);
        var goods = result.extend.pageInfo.list;
        $.each(goods, function (index, item) {
            var picEle = $('<div class="col-md-2 col-xs-12"></div>')
                .append('<div class="item-img">' + '<img alt="" src="assets/img/upload_pic_package/' + item.showImg + '.jpg">' + '</div>');
            var titleEle = $('<div class="item-title"></div>')
                .append('<a href="detail?goodsId=' + item.goodsId + '">' + '<h4>' + item.goodsTitle + '</h4>' + '</a>');
            var differ;
            var nowDate = new Date();
            var year = nowDate.getFullYear();
            var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
            var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
            var hour = nowDate.getHours() < 10 ? "0" + nowDate.getHours() : nowDate.getHours();
            var minute = nowDate.getMinutes() < 10 ? "0" + nowDate.getMinutes() : nowDate.getMinutes();
            if (year - item.createTime.year > 0) {
                differ = "&nbsp;" + (year - item.createTime.year) + "年前";
            } else if (year - item.createTime.year == 0 && month - item.createTime.monthValue > 0) {
                differ = "&nbsp;" + (month - item.createTime.monthValue) + "个月前";
            } else if (month - item.createTime.monthValue == 0 && date - item.createTime.dayOfMonth > 0) {
                differ = "&nbsp;" + (date - item.createTime.dayOfMonth) + "天前"
            } else if (date - item.createTime.dayOfMonth == 0 && hour - item.createTime.hour > 0) {
                differ = "&nbsp;" + (hour - item.createTime.hour) + "小时前"
            } else {
                differ = "&nbsp;" + (minute - item.createTime.minute) + "分钟前";
            }
            var dateEle = $('<li class="item-date"></li>')
                .append('<i class="fa fa-clock-o"></i>').append(differ);
            var levelEle = $('<li class="item-cat hidden-xs"></li>')
                .append('<i class="fa fa-bars"></i>').append('<a href="category.html">' + "&nbsp;" + item.firstLevel.firstLevelName + '</a>，')
                .append('<a href="category.html">' + item.secondLevel.secondLevelName + '</a>');
            var degree;
            switch (item.goodsDegree) {
                case 1:
                    degree = '九五新';
                    break;
                case 2:
                    degree = '九成新';
                    break;
                case 3:
                    degree = '八成新';
                    break;
                case 4:
                    degree = '其他';
            }
            var gender;
            switch (item.masterGender) {
                case 1:
                    gender = '默认';
                    break;
                case 2:
                    gender = '男';
                    break;
                case 3:
                    gender = '女';
            }
            var degreeEle = $('<li class="item-type"><i class="fa fa-bookmark">').append('</i>' + "&nbsp;" + degree + '</li>');
            var genderEle = $('<li class="item-date"></li>')
                .append('<i class="fa fa-transgender-alt"></i>').append("&nbsp;" + gender);
            var ulEle = $('<ul></ul>').append(dateEle).append(levelEle).append(degreeEle).append(genderEle);
            var divEle = $('<div class="item-meta"></div>').append(ulEle);
            var infoEle = $('<div class="col-md-offset-1 col-md-7 col-xs-6"></div>').append(titleEle).append(divEle);
            var priceEle = $('<div class="item-price"></div>')
                .append('<h3>¥ ' + item.goodsPrice + '</h3>')
                .append('<span>' + (item.tradeType == 1 ? "一口价" : "可砍价") + '</span>');
            var tooltip = $('<ul></ul>').append('<li><a href="#" data-toggle="tooltip" data-placement="top" title="收藏" class="btn btn-default btn-md"><i class="fa fa-heart"></i></a></li>&nbsp;')
                .append('<li><a href="detail?goodsId=' + item.goodsId + '" data-toggle="tooltip" data-placement="top" title="详细信息" class="btn btn-success btn-md"><i class="fa fa-eye"></i></a></li>');
            var actionEle = $('<div class="item-action"></div>').append(tooltip);
            var priceEle = $('<div class="col-md-2 col-xs-6"></div>').append(priceEle).append(actionEle);
            var rowEle = $('<div class="row"></div>').append(picEle).append(infoEle).append(priceEle);
            $('<div class="item-ads"></div>').append(rowEle).appendTo("#goods_items");
        });
        $('[data-toggle="tooltip"]').tooltip();
    }

    function build_page_info(result) {
        $("#page_info").empty();
        $("#page_info").append("当前第" + result.extend.pageInfo.pageNum + "页，共"
            + result.extend.pageInfo.pages + "页，共" + result.extend.pageInfo.total + "条记录");
    }

    function bulid_page_nav(result) {
        $("#page_nav").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        if (result.extend.pageInfo.hasPreviousPage) {
            var firstPageLi = $("<li></li>").append($("<a></a>)").append("首页")
                .attr("href", "#"));
            var prePageLi = $("<li></li>").append($("<a></a>)").append("&laquo;"));
            //添加单击事件
            firstPageLi.click(function () {
                to_page(result.extend.navigateFirstPage);
            });
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum - 1);
            });
        }
        if (result.extend.pageInfo.hasNextPage) {
            var nextPageLi = $("<li></li>").append($("<a></a>)").append("&raquo;"));
            var lastPageLi = $("<li></li>").append($("<a></a>)").append("末页")
                .attr("href", "#"));
            lastPageLi.click(function () {
                to_page(result.extend.pageInfo.navigateLastPage);
            });
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum + 1);
            });
        }
        ul.append(firstPageLi).append(prePageLi);
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {
            var numLi = $("<li></li>").append($("<a></a>)").append(item));
            if (result.extend.pageInfo.pageNum == item)
                numLi.addClass("active");
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });
        ul.append(nextPageLi).append(lastPageLi);
        var nav = $("<nav></nav>").append(ul);
        nav.appendTo("#page_nav");
    }

</script>
</body>
</html>
