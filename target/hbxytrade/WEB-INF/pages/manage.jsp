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
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb pull-left">
                        <li><a href="${ctp }">首页</a></li>
                        <li>管理物品</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9">
                    <div class="widget">
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active" id="publish_goods"><a
                                    href="javascript:void(0)">发布的物品</a></li>
                            <li role="presentation" id="under_goods"><a href="javascript:void(0)">下架的物品</a></li>
                            <li role="presentation" id="selled_goods"><a href="javascript:void(0)">已售出的物品</a></li>
                        </ul>
                        <div class="list-results">
                            <div class="row">
                                <div class="col-md-12" id="goods_items">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-md-3">
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
                                <a href="manage" class="list-group-item"
                                   style="background-color: #2aabd2;color: white">管理物品</a>
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
</div>
<div class="modal fade" id="goods_update_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_goods_form" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="title" class="col-md-3 control-label">标题：</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="title" name="goodsTitle"
                                   placeholder="*商品展示标题，20字之内">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">分类：</label>
                        <div class="col-md-6">
                            <label>选择一级分类
                                <select class="form-control" name="firstLevelId" id="first_level_select">
                                </select>
                            </label>
                            &nbsp;
                            <label>选择二级分类
                                <select class="form-control" name="secondLevelId" id="second_level_select">
                                </select>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">新旧程度：</label>
                        <div class="col-md-7" id="degree">
                            <label class="radio-inline">
                                <input type="radio" name="goodsDegree" value="1"
                                       checked="checked">
                                九五新
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="goodsDegree" value="2"> 九成新
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="goodsDegree" value="3"> 八成新
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="goodsDegree" value="4"> 其他
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">物主性别：</label>
                        <div class="col-md-6">
                            <label class="radio-inline">
                                <input type="radio" name="masterGender" id="gender1" value="1"
                                       checked="checked">
                                默认
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="masterGender" id="gender2" value="2"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="masterGender" id="gender3" value="3"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-md-3 col-xs-8 control-label">价格：</label>
                        <div class="col-md-4 col-xs-8">
                            <input type="text" class="form-control" id="price" name="goodsPrice"
                                   placeholder="*请输入价格，最低0.1元">
                            <span class="help-block"></span>
                        </div>
                        <div class="col-md-1 col-xs-1">
                            <label class="control-label">元</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">交易方式：</label>
                        <div class="col-md-6">
                            <label class="radio-inline">
                                <input type="radio" name="tradeType" id="trade_type1" value="1"
                                       checked="checked">
                                一口价
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tradeType" id="trade_type2" value="2"> 可砍价
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="qq" class="col-md-3 control-label">QQ号：</label>
                        <div class="col-md-5">
                            <input type="text" class="form-control" name="masterQq" id="qq"
                                   placeholder="*输入你的QQ号，方便买家与你联系">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="describe" class="col-md-3 control-label">商品描述：</label>
                        <div class="col-md-8">
                                <textarea rows="4" id="describe" name="goodsDescribe" class="form-control"
                                          placeholder="添加一段对你的商品的描述，0～200字之内"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-1">
                            <div class="upload-pic">
                                <label for="add-pic-btn" class="pointer">上传图片</label>
                                <div class="col-md-8">
                                    <input type="file" style="display:none" multiple class="up-file"
                                           accept="image/gif,image/jpeg,image/x-png,image/png" name="group_pic"
                                           id="add-pic-btn"/>
                                </div>
                            </div>
                            <div class="upload-pic">
                                <label for="clear-pic-btn" class="pointer">清空图片</label>
                                <div class="col-md-8">
                                    <input type="button" style="display:none" id="clear-pic-btn"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="group-coms-pic" id="group_pic">
                            </div>
                            <span class="help-block col-md-offset-1"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="goods_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        build_goods_table();
    });

    $("#publish_goods").click(function () {
        $(this).parent("ul").children("*").removeClass("active");
        $(this).addClass("active");
        build_goods_table();
    });

    $("#under_goods").click(function () {
        $(this).parent("ul").children("*").removeClass("active");
        $(this).addClass("active");
        under_goods_table();
    });

    $("#selled_goods").click(function(){
        $(this).parent("ul").children("*").removeClass("active");
        $(this).addClass("active");
        selled_goods_table();
    });

    function build_goods_table() {
        $.ajax({
            url: "${ctp }/querypublishgoods",
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (result) {
                goods_table(result,"fa fa-arrow-down","下架","goods_under_btn");
            }
        });
    }

    function goods_table(result,icon,text,btn){
        $("#goods_items").empty();
        var goods = result.extend.goods;
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
            var infoEle = $('<div class="col-md-offset-1 col-md-6 col-xs-6"></div>').append(titleEle).append(divEle);
            var priceEle = $('<div class="item-price col-md-offset-2"></div>')
                .append('<h3>¥ ' + item.goodsPrice + '</h3>')
                .append('<span>' + (item.tradeType == 1 ? "一口价" : "可砍价") + '</span>');
            var updateBtn = $('<button class="btn btn-info" id="goods_update_btn"><i class="fa fa-align-left">' +
                '</i>&nbsp;<span>修改</span></button>').attr("goods_id", item.goodsId);
            var underBtn = $('<button class="btn btn-warning" id='+btn+'><i class="' + icon + '">' + '</i>&nbsp;<span>'
                + text + '</span></button>').attr("goods_id", item.goodsId);
            var tooltip = $('<ul></ul>').append(updateBtn).append("&nbsp;").append(underBtn);
            var actionEle = $('<div class="item-action"></div>').append(tooltip);
            var priceEle = $('<div class="col-md-3 col-xs-6"></div>').append(priceEle).append(actionEle);
            var rowEle = $('<div class="row"></div>').append(picEle).append(infoEle).append(priceEle);
            $('<div class="item-ads"></div>').append(rowEle).appendTo("#goods_items");
        });
        $('[data-toggle="tooltip"]').tooltip();
    }

    $(document).on("click", "#goods_update_btn", function () {
        reset_form();
        $('#group_pic').children("*").remove();
        getFirstLevel();
        setResult(this);
    });

    function reset_form() {
        document.getElementById("edit_goods_form").reset();
        $("#edit_goods_form").find("*").removeClass("has-success has-error");
        $("#edit_goods_form").find(".help-block").text("");
    }

    function getFirstLevel() {
        $('#first_level_select').empty();
        $.ajax({
            url: "${ctp }/firstlevels",
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                $.each(result.extend.firstlevels, function () {
                    var optionEle = $('<option></option>').append(this.firstLevelName).attr('value', this.firstLevelId);
                    optionEle.appendTo('#first_level_select');
                });
            }
        })
    }

    $('#first_level_select').change(function () {
        getSecondLevel();
    });

    function getSecondLevel() {
        $('#second_level_select').empty();
        var firstLevelId = $('#first_level_select option:selected').attr('value');
        $.ajax({
            url: "${ctp }/secondlevels/" + firstLevelId,
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                $.each(result.extend.secondlevels, function () {
                    var optionEle = $('<option></option>')
                        .append(this.secondLevelName)
                        .attr('value', this.secondLevelId);
                    optionEle.appendTo('#second_level_select');
                });
            }
        });
    }

    function setResult(btn) {
        $.ajax({
            url: "${ctp }/goods/" + $(btn).attr("goods_id"),
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (result) {
                var item = result.extend.singleGoods;
                $("#title").val(item.goodsTitle);
                $("#edit_goods_form select[name=firstLevelId]").val([item.firstLevel.firstLevelId]);
                getSecondLevel();
                $("#edit_goods_form select[name=secondLevelId]").val([item.secondLevel.secondLevelId]);
                $("#edit_goods_form input[name=goodsDegree]").val([item.goodsDegree]);
                $("#edit_goods_form input[name=masterGender]").val([item.masterGender]);
                $("#price").val(item.goodsPrice);
                $("#edit_goods_form input[name=tradeType]").val([item.tradeType]);
                $("#qq").val(item.masterQq);
                $("#describe").val(item.goodsDescribe);
                $("#group_pic").next("span").text("*之前的图片将被删除，请插入新的图片");
                //把物品id传递给更新按钮
                $("#goods_save_btn").attr("goods_id", item.goodsId);
                $("#goods_update_modal").modal({
                    backdrop: "static"
                })
            }
        })
    }

    var count = 0, length = 0, flag = 0;
    document.getElementById("add-pic-btn").addEventListener("change", function () {
        var obj = this,
            arrTitle = []; //存标题名
        length = obj.files.length;
        count += length;
        if (count <= 10) {
            _html = '';
            for (var i = 0; i < length; i++) {
                var reader = new FileReader();
                if (!reader) {
                    console.log('对不起，您的浏览器不支持！请尝试更换更高版本的浏览器');
                    return
                }
                //存储上传的多张图片名字
                arrTitle.push(obj.files[i].name);
                reader.error = function () {
                    console.log("读取异常")
                }
                //iffi语法
                ;(function (i) {
                    //读取成功
                    reader.onload = function (e) {
                        //console.log(e)
                        var _src = e.target.result;
                        //节点
                        var divItem = document.createElement('div');
                        divItem.setAttribute('class', 'item');
                        var divPic = document.createElement('div');
                        divPic.setAttribute('class', 'pic-box');
                        var img = document.createElement('img');
                        img.setAttribute('class', 'img');
                        img.setAttribute('src', _src);
                        var divTk = document.createElement('div');
                        divTk.setAttribute('class', 'tk');
                        var spanDel = document.createElement('span');
                        spanDel.setAttribute('class', 'del');
                        spanDel.setAttribute('title', arrTitle[i]);
                        spanDel.innerText = 'x';
                        divTk.innerHTML = arrTitle[i];
                        divItem.appendChild(divPic);
                        divPic.appendChild(img);
                        divItem.appendChild(divTk);
                        divItem.appendChild(spanDel);
                        //增加节点结构
                        var groupPic = document.getElementById('group_pic');
                        groupPic.insertBefore(divItem, groupPic.firstChild);
                        //删除节点方法
                        spanDel.onclick = function () {
                            removeItem(this);
                            return false;
                        };
                    };
                })(i);
                reader.readAsDataURL(obj.files[i]);
            }
        } else {
            alert("添加的图片不能超过10张");
            count -= length;
        }
        length = 0;
    });

    //删除图片
    function removeItem(delNode) {
        var itemNode = delNode.parentNode,
            title = delNode.getAttribute('title');
        var flag_confirm = confirm("确认要删除名为：" + title + "的图片？");
        if (flag_confirm) {
            if (itemNode.className == 'item box') {
                flag = 0;
            }
            itemNode.parentNode.removeChild(itemNode);
            count--;
        }
        return false;
    }

    var selected_file;
    //图片选中效果
    $(document).on("click", "#group_pic img", function () {
        if ($(this).parent("div").parent("div").hasClass("box") && flag == 1) {
            $(this).parent("div").parent("div").removeClass("box");
            selected_file = null;
            flag--;
        } else {
            if (flag == 0) {
                $(this).parent("div").parent("div").addClass("box");
                var files = document.getElementById("add-pic-btn").files;
                selected_file = files.length - $(this).parent("div").parent("div").index() - 1;
                flag++;
            } else {
                alert("只能选择一张图片作为封面，亲")
            }
        }
    });

    //清空图片
    $('#clear-pic-btn').click(function () {
        if (confirm("确定要清空所有图片吗？")) {
            $('#group_pic').children("*").remove();
            flag = 0;
            count = 0;
        }
    });

    $("#title").change(function () {
        var title = $("#title").val();
        var regTitle = /^[\u2E80-\u9FFFa-zA-Z0-9_-]{1,20}$/;
        if (!regTitle.test(title)) {
            show_validate_msg("#title", "error", "请输入1～20个汉字、数字或英文");
            return false;
        } else {
            show_validate_msg("#title", "success", "");
        }
    });

    $("#price").change(function () {
        var price = $("#price").val();
        var regPrice = /^(([1-9][0-9]{0,4})\.([0-9]{1,2}))$|^([1-9][0-9]{0,4})$/;
        if (!regPrice.test(price)) {
            show_validate_msg("#price", "error", "价格必须是1～99999之间");
            return false;
        } else {
            show_validate_msg("#price", "success", "");
        }
    });

    $("#qq").change(function () {
        var qq = $("#qq").val();
        var regQQ = /^[1-9]*[1-9][0-9]*$/;
        if (!regQQ.test(qq)) {
            show_validate_msg("#qq", "error", "请输入正确的QQ号");
            return false;
        } else {
            show_validate_msg("#qq", "success", "");
        }
    });

    $("#goods_save_btn").click(function () {
        if (!validate_add_form())
            return false;
        //发送ajax请求保存图片
        var goodsId = $(this).attr("goods_id");
        var imgData = new FormData($("#edit_goods_form")[0]);
        imgData.append('show_pic', selected_file);  //添加图片信息的参数
        $.ajax({
            url: "${ctp }/updatefiles/" + goodsId,
            type: "POST",
            data: imgData,
            dataType: "json",
            cache: false, //上传文件不需要缓存
            processData: false, //序列化
            contentType: false, //内容类型为空
            success: function (result) {
                if (result.code == 1) {
                    //发送ajax请求更新物品信息
                    $.ajax({
                        url: "${ctp }/goods/" + goodsId,
                        type: "PUT",
                        data: decodeURIComponent($("#edit_goods_form").serialize()),
                        dataType: "json",
                        contextType: "application/json;charset=utf-8",
                        success: function (result) {
                            if (result.code == 1) {
                                alert("更新信息成功");
                                $("#goods_update_modal").modal("hide");
                                build_goods_table();
                            }
                        }
                    });
                }
            }
        });
    });

    function validate_add_form() {
        //拿到要校验的数据
        var title = $("#title").val();
        var regTitle = /^[\u2E80-\u9FFFa-zA-Z0-9_-]{1,20}$/;
        if (!regTitle.test(title)) {
            show_validate_msg("#title", "error", "请输入1～20个汉字、数字或英文");
            return false;
        } else {
            show_validate_msg("#title", "success", "");
        }
        var price = $("#price").val();
        var regPrice = /^(([1-9][0-9]{0,4})\.([0-9]{1,2}))$|^([1-9][0-9]{0,4})$/;
        if (!regPrice.test(price)) {
            show_validate_msg("#price", "error", "价格必须是1～99999之间");
            return false;
        } else {
            show_validate_msg("#price", "success", "");
        }
        var qq = $("#qq").val();
        var regQQ = /^[1-9]*[1-9][0-9]*$/;
        if (!regQQ.test(qq)) {
            show_validate_msg("#qq", "error", "请输入正确的QQ号");
            return false;
        } else {
            show_validate_msg("#qq", "success", "");
        }
        var describe = $("#describe").val();
        var regDescribe = /^[\u2E80-\u9FFFa-zA-Z0-9_-]{0,200}$/;
        if (!regDescribe.test(describe)) {
            show_validate_msg("#describe", "error", "字数不能超过200字");
            return false;
        } else {
            show_validate_msg("#describe", "success", "");
        }
        if (flag == 0) {
            show_validate_msg("#group_pic", "error", "*请选择一张图片作为物品的封面");
            return false;
        } else {
            show_validate_msg("#group_pic", "success", "");
        }
        var size = 0;
        var files = document.getElementById("add-pic-btn").files;
        for (var i = 0; i < files.length; i++) {
            if (files[i].size > 3 * 1024 * 1024) {
                show_validate_msg("#group_pic", "error", "*单个图片大小不能超过3MB");
                return false;
            } else {
                show_validate_msg("#group_pic", "success", "");
                size += files[i].size;
            }
        }
        return true;
    }

    function show_validate_msg(ele, status, msg) {
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if (status == "success")
            $(ele).parent().addClass("has-success");
        else if (status == "error")
            $(ele).parent().addClass("has-error");
        $(ele).next("span").text(msg);
    }

    $(document).on("click", "#goods_under_btn", function () {
        if (confirm("确定要下架该物品吗？")) {
            var goodsId = $(this).attr("goods_id");
            $.ajax({
                url: "${ctp }/undergoods/" + goodsId,
                type: "PUT",
                success: function (result) {
                    if (result.code == 1) {
                        build_goods_table();
                    }
                }
            });
        }
    });

    function under_goods_table() {
        $.ajax({
            url: "${ctp }/queryundergoods",
            type: "GET",
            contextType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (result) {
                goods_table(result,"fa fa-arrow-up","上架","goods_over_btn");
            }
        });
    }

    $(document).on("click", "#goods_over_btn", function () {
        if (confirm("确定要上架该物品吗？")) {
            var goodsId = $(this).attr("goods_id");
            $.ajax({
                url: "${ctp }/overgoods/" + goodsId,
                type: "PUT",
                success: function (result) {
                    if (result.code == 1) {
                        under_goods_table();
                    }
                }
            });
        }
    });

    function selled_goods_table(){
        $("#goods_items").empty();
        var thEle1 = $("<th></th>").append("666");
        var thEle2 = $("<th></th>").append("666");
        var trEle1 = $("<tr></tr>").append(thEle1).append(thEle2);
        var tdEle1 = $("<td></td>").append("555");
        var tdEle2 = $("<td></td>").append("333");
        var trEle2 = $("<tr></tr>").append(tdEle1).append(tdEle2);
        $("<table ></table>").addClass("table table-hover table-bordered table-responsive")
            .append(trEle1).append(trEle2).appendTo("#goods_items");
    }

</script>

</html>
