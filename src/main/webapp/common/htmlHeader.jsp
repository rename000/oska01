<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="commom.jsp" %>

<!DOCTYPE html>
<html>
<%--<head>--%>
    <%--<meta charset="UTF-8">--%>
    <%--<title>欧饰家品牌地板</title>--%>
    <%--<meta name="Keywords" content="欧饰家品牌地板"/>--%>
    <%--<meta name="Description" content="欧饰家品牌地板"/>--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">--%>
    <%--<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">--%>
    <%--&lt;%&ndash;<base href="<%=basePath%>static/">&ndash;%&gt;--%>
    <%--<link rel="stylesheet" href="<%=basePath%>static/css/public.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/swiper.min.css"/>--%>
    <%--<script type="text/javascript" src="<%=basePath%>static/js/jquery-1.9.1.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=basePath%>static/js/swiper-3.4.2.jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=basePath%>static/js/public.js" ></script>--%>
    <%--<style type="text/css">--%>
        <%--.swiper-pagination{ width: 1200px !important; position: absolute; left: 0; right: 0; bottom: 28px !important; margin: auto; text-align:left;}--%>
        <%--.swiper-pagination-bullet{ width: 60px; height: 4px; border-radius: 0; background-color: #fff; opacity: 1;}--%>
        <%--.swiper-pagination-bullet-active{ background-color: #463723;}--%>
    <%--</style>--%>
<%--</head>--%>
<head>
    <meta charset="UTF-8">
    <title>阑风品牌地板</title>
    <meta name="Keywords" content="阑风品牌地板"/>
    <meta name="Description" content="阑风品牌地板"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" href="<%=basePath%>static/css/public.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/swiper.min.css"/>
    <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/swiper-3.4.2.jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/public.js"></script>
    <style type="text/css">
        .swiper-pagination{ width: 210px !important; position: absolute; left: 0; right: 0; bottom: 28px !important; margin: auto; text-align:left;}
        .swiper-pagination-bullet{ width: 60px; height: 4px; border-radius: 0; background-color: #fff; opacity: 1;}
        .swiper-pagination-bullet-active{ background-color: #912827;}
    </style>
</head>
<body>
<!--头部-->
<div class="header">
    <div class="w">
        <div class="mod">
            <div class="logo"><a href="javascript:;"><img alt="阑风品牌地板" src="<%=basePath%>static/images/logo.png"/></a></div>
            <ul class="ser-mod u-right">
                <li><img src="<%=basePath%>static/images/tel-icon.png"/></li>
                <li><a href="javascript:;"><img src="<%=basePath%>static/images/wx-icon.png"/></a></li>
                <li><a href="javascript:;"><img src="<%=basePath%>static/images/qq-icon2.png"/></a></li>
                <li><a href="javascript:;"><img src="<%=basePath%>static/images/ewm-icon.png"/></a></li>
            </ul>
        </div>
    </div>
    <!--导航-->
    <div class="nav">
        <div class="w">
            <ul class="nav-line font14">
                <li>
                    <a href="<%=basePath%>oskaHtml/index/index.jsp">首  页</a><i class="g-line"></i>
                </li>
                <li class="nav-over">
                    <a href="<%=basePath%>oskaHtml/products/products.jsp">产品世界</a>
                    <em class="arrow"></em>
                    <i class="g-line"></i>
                    <div class="subset" id="productTypeList">
                        <%--<a href="#">橡木仿古</a>--%>
                        <%--<a href="#">橡木人字拼</a>--%>
                        <%--<a href="#">原木手工拼花</a>--%>
                        <%--<a href="#">强化地板</a>--%>
                    </div>
                    <div class="linex"></div>
                </li>
                <li>
                    <a href="<%=basePath%>oskaHtml/material/material.jsp">原材料生材基地</a>
                    <i class="g-line"></i>
                </li>
                <li class="nav-over">
                    <a href="<%=basePath%>oskaHtml/news/news.jsp">新闻资讯</a>
                    <em class="arrow"></em><i class="g-line"></i>
                    <div class="subset">
                        <a href="<%=basePath%>oskaHtml/news/news.jsp?newsType=1">企业新闻 </a>
                        <a href="<%=basePath%>oskaHtml/news/news.jsp?newsType=2">行业新闻</a>
                    </div>
                    <div class="linex"></div>
                </li>
                <li class="nav-over">
                    <a href="<%=basePath%>oskaHtml/impression/about.jsp">阑风印象</a>
                    <em class="arrow" style="right: 32px;"></em>
                    <i class="g-line"></i>
                    <div class="subset">
                        <a href="<%=basePath%>oskaHtml/impression/about.jsp">关于阑风 </a>
                        <a href="<%=basePath%>oskaHtml/impression/story.jsp">品牌故事</a>
                        <a href="<%=basePath%>oskaHtml/impression/case.jsp">工程案例</a>
                    </div>
                    <div class="linex"></div>
                </li>
                <li>
                    <a href="<%=basePath%>oskaHtml/contact/contact.jsp">联系我们</a>
                    <i class="g-line"></i>
                </li>
            </ul>
            <div class="subsetbg"></div>
        </div>
    </div>
</div>


<!--头部-->
<%--<div class="header" style="display: none !important;">--%>
    <%--<div class="w">--%>
        <%--<div class="logo"><a href="javascript:;"><img alt="欧饰家品牌地板" src="<%=basePath%>static/images/logo.png"/></a></div>--%>
    <%--</div>--%>
    <%--<!--导航-->--%>
    <%--<div class="nav">--%>
        <%--<div class="w">--%>
            <%--<ul class="nav-line font14">--%>
                <%--<li>--%>
                    <%--<a href="<%=basePath%>oskaHtml/index/index.jsp">首  页</a><i class="g-line"></i>--%>
                <%--</li>--%>
                <%--<li class="nav-over">--%>
                    <%--<a href="<%=basePath%>oskaHtml/products/products.jsp">产品世界</a>--%>
                    <%--<em class="arrow"></em>--%>
                    <%--<i class="g-line"></i>--%>
                    <%--<div class="subset" id="productTypeList">--%>
                        <%--&lt;%&ndash;<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=1">橡木仿古</a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=2">橡木人字拼</a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=3">原木手工拼花</a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=4">强化地板</a>&ndash;%&gt;--%>
                    <%--</div>--%>
                    <%--<div class="linex"></div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="<%=basePath%>oskaHtml/material/material.jsp">原材料生材基地</a>--%>
                    <%--<i class="g-line"></i>--%>
                <%--</li>--%>
                <%--<li class="nav-over">--%>
                    <%--<a href="<%=basePath%>oskaHtml/news/news.jsp">新闻资讯</a>--%>
                    <%--<em class="arrow"></em><i class="g-line"></i>--%>
                    <%--<div class="subset">--%>
                        <%--<a href="<%=basePath%>oskaHtml/news/news.jsp?newsType=1">企业新闻 </a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/news/news.jsp?newsType=2">行业新闻</a>--%>
                    <%--</div>--%>
                    <%--<div class="linex"></div>--%>
                <%--</li>--%>
                <%--<li class="nav-over">--%>
                    <%--<a href="<%=basePath%>oskaHtml/impression/about.jsp">欧饰家印象</a>--%>
                    <%--<em class="arrow" style="right: 29px;"></em>--%>
                    <%--<i class="g-line"></i>--%>
                    <%--<div class="subset">--%>
                        <%--<a href="<%=basePath%>oskaHtml/impression/about.jsp">关于欧饰家 </a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/impression/story.jsp">品牌故事</a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/impression/case.jsp">工程案例</a>--%>
                    <%--</div>--%>
                    <%--<div class="linex"></div>--%>
                <%--</li>--%>
                <%--<li><a href="<%=basePath%>oskaHtml/contact/contact.jsp">联系我们</a></li>--%>
            <%--</ul>--%>
            <%--<div class="subsetbg"></div>--%>
        <%--</div>--%>
    <%--</div>--%>

<%--</div>--%>


