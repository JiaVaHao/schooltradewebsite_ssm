<%--
  ~  Copyright(c)2020
  ~  项目名称:hbxytrade
  ~  文件名称:header.jsp
  ~  Date:2020/3/28 下午7:13
  ~  Author:Code Ant Jiang
  ~  *请勿抄袭或作毕设，抄袭必究！
  --%>

<%--
  Created by IntelliJ IDEA.
  User: 20439
  Date: 2020/1/23
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
<link rel="shortcut icon" href="assets/img/sign/favicon.ico">
<body>
<header class="navbar navbar-default navbar-fixed-top navbar-top">
    <div class="navbar-left">
        <span class="logo hidden-xs"><img alt="" src="assets/img/sign/hbxy.png"/></span>
        <span class="logo hidden-xs"><img alt="" src="assets/img/sign/jsjkxyjs.png"/></span>
    </div>
    <div class="container">
        <!--导航条-->
        <div class="navbar-header">
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="sr-only">导航条</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${ctp }" class="navbar-brand"><span class="logo"><i
                    class="fa fa-recycle"></i> 校园二手交易网</span></a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="new-ads"><a href="#" class="btn btn-ads btn-block">查看告示</a></li>
                <li><a href="${ctp }">首页</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;查看我的</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">正在出售</a></li>
                        <li><a href="#">我的回复</a></li>
                        <li><a href="#">售后</a></li>
                        <li><a href="#">个人中心</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</header>
</body>
