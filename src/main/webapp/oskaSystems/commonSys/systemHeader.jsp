<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/commom.jsp" %>


<%
//    String menuType = (String)request.getSession().getAttribute("menu_Type");
    String  menuType = request.getParameter("menuType");
    if("".equals(menuType)){menuType = "open";}
    String menuActive = "";
    if("open".equals(menuType)){
        menuType = "";
        menuActive = "";
    }else if("close".equals(menuType)){
        menuActive = "active";
        menuType = "nav-xs";
    }else{
        menuActive = "";
        menuType = "";
    }

    String  active = request.getParameter("active");
    if("".equals(active)){active = "1";}
    String  c_active = request.getParameter("c_active");
%>

<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8" />
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="<%= basePath%>static/img/favicon.png" rel="shortcut icon" type="image/x-icon"/>
    <link rel="stylesheet" href="<%=basePath%>static/css/QB.v2.css" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>static/css/oska.css" type="text/css" />
    <%--<link rel="stylesheet" href="css/font.css" type="text/css" cache="false" />--%>
    <script src="<%=basePath%>static/js/QB.v2.js"></script>
    <script src="<%=basePath%>static/js/fileupload/js/fileinput.js"></script>
    <script src="<%=basePath%>static/js/fileupload/js/fileinput_locale_zh.js"></script>
    <script src="<%=basePath%>static/js/oska.js"></script>
    <%--page--%>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/js/page/paging.css"/>
    <script type="text/javascript" src="<%=basePath%>static/js/page/pagePlugin.js"></script>
    <script>
        if(!localStorage.tokenKey || localStorage.tokenKey==""){
            window.location.href =  localStorage.basePath+"oskaSystems/login.jsp"
        }
    </script>
</head>

<body>
<section class="vbox">
    <header class="bg-dark dk header navbar navbar-fixed-top-xs">
        <div class="navbar-header"><a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen"
                                      data-target="#nav"> <i class="fa fa-bars"></i> </a>
            <a href="#" class="navbar-brand" data-toggle="fullscreen">
                欧饰家 | 后台管理系统
            </a>
            <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user"> <i class="fa fa-cog"></i>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right hidden-xs nav-user">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="thumb-sm avatar pull-left">
                    <img src="<%= basePath%>static/img/console_head.png"> </span> 你好，管理员 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu animated fadeInRight">
                    <span class="arrow top"></span>
                    <li> <a href="#">帮助</a> </li>
                    <li class="divider"></li>
                    <li> <a onclick="goOutFun()">退出</a> </li>
                </ul>
            </li>
        </ul>
    </header>
    <section>
        <section class="hbox stretch"> <!-- .aside -->
            <aside class="bg-dark lter <%=menuType%> aside-md hidden-print" id="nav">
                <section class="vbox">
                    <section class="w-f scrollable">
                        <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">
                            <!-- nav -->
                            <nav class="nav-primary hidden-xs">
                                <ul class="nav">
                                    <li class="<%=("1".equals(active)?"active":"")%>"> <a href="<%=basePath%>oskaSystems/index/index.jsp?active=1" class="<%=("1".equals(active)?"active":"")%>"> <i class="fa fa-home icon"> <b class="bg-danger"></b> </i> <span>主页</span> </a> </li>
                                    <li class="<%="2".equals(active)?"active":""%>"> <a href="<%=basePath%>oskaSystems/products/products.jsp?active=2" class="<%="2".equals(active)?"active":""%>"> <i class="fa fa-columns icon"> <b class="bg-success"></b> </i> <span>产品管理</span> </a> </li>
                                    <li class="<%="3".equals(active)?"active":""%>"> <a href="<%=basePath%>oskaSystems/news/news.jsp?active=3" class="<%="3".equals(active)?"active":""%>"> <i class="fa fa-book icon"> <b class="bg-info"></b> </i> <span>新闻管理</span> </a> </li>
                                    <li class="<%="4".equals(active)?"active":""%>"> <a href="#uikit" class="<%="4".equals(active)?"active":""%>"> <i class="fa fa-edit icon"> <b class="bg-warning"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>欧饰家印象</span> </a>
                                        <ul class="nav lt">
                                            <li class="<%="1".equals(c_active)?"active":""%>"> <a href="<%=basePath%>oskaSystems/impression/about.jsp?active=4&c_active=1" class="<%="1".equals(c_active)?"active":""%>"> <i class="fa fa-angle-right"></i> <span>关于欧饰家 </span> </a> </li>
                                            <li class="<%="2".equals(c_active)?"active":""%>"> <a href="<%=basePath%>oskaSystems/impression/story.jsp?active=4&c_active=2" class="<%="2".equals(c_active)?"active":""%>"> <i class="fa fa-angle-right"></i> <span>品牌故事 </span> </a> </li>
                                            <li class="<%="3".equals(c_active)?"active":""%>"> <a href="<%=basePath%>oskaSystems/impression/case.jsp?active=4&c_active=3" class="<%="3".equals(c_active)?"active":""%>"> <i class="fa fa-angle-right"></i> <span>工程案例 </span> </a> </li>
                                            <!--<li > <a href="icons.html" > <b class="badge bg-info pull-right">369</b> <i class="fa fa-angle-right"></i> <span>Icons</span> </a> </li>-->
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                            <!-- / nav -->
                        </div>
                    </section>
                    <footer class="footer lt hidden-xs b-t b-dark">
                        <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon <%=menuActive%>"> <i class="fa fa-angle-left text"></i> <i class="fa fa-angle-right text-active"></i> </a>
                    </footer>
                </section>
            </aside>
            <!-- /.aside -->
            <section id="content">
                <section id="vbox" class="vbox">
                    <section class="scrollable padder">