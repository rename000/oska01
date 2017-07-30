<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="commom.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欧饰家品牌地板</title>
    <meta name="Keywords" content="欧饰家品牌地板"/>
    <meta name="Description" content="欧饰家品牌地板"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <%--<base href="<%=basePath%>static/">--%>
    <link rel="stylesheet" href="<%=basePath%>static/css/public.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/swiper.min.css"/>
    <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/swiper-3.4.2.jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/public.js" ></script>
    <style type="text/css">
        .swiper-pagination{ width: 1200px !important; position: absolute; left: 0; right: 0; bottom: 28px !important; margin: auto; text-align:left;}
        .swiper-pagination-bullet{ width: 60px; height: 4px; border-radius: 0; background-color: #fff; opacity: 1;}
        .swiper-pagination-bullet-active{ background-color: #463723;}
    </style>
</head>
<body>
<!--头部-->
<div class="header">
    <div class="w">
        <div class="logo"><a href="javascript:;"><img alt="欧饰家品牌地板" src="<%=basePath%>static/images/logo.png"/></a></div>
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
                        <%--<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=1">橡木仿古</a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=2">橡木人字拼</a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=3">原木手工拼花</a>--%>
                        <%--<a href="<%=basePath%>oskaHtml/products/products.jsp?productType=4">强化地板</a>--%>
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
                    <a href="<%=basePath%>oskaHtml/impression/about.jsp">欧饰家印象</a>
                    <em class="arrow" style="right: 29px;"></em>
                    <i class="g-line"></i>
                    <div class="subset">
                        <a href="<%=basePath%>oskaHtml/impression/about.jsp">关于欧饰家 </a>
                        <a href="<%=basePath%>oskaHtml/impression/story.jsp">品牌故事</a>
                        <a href="<%=basePath%>oskaHtml/impression/case.jsp">工程案例</a>
                    </div>
                    <div class="linex"></div>
                </li>
                <li><a href="<%=basePath%>oskaHtml/contact/contact.jsp">联系我们</a></li>
            </ul>
            <div class="subsetbg"></div>
        </div>
    </div>

</div>

<script>
    //getData base function
    function getData(jsonObj,urlVal,callBack) {
        var getData_jsonObject = jsonObj;
        var option = {
            url:urlVal,
            type:'post',
            data:{jsonObject:JSON.stringify(getData_jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    callBack(data);
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }

    //获得产品列表
    function getList(jsonObj){
        var urlVal = '<%=basePath%>' + 'productType/getProductType';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
            productListData = dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<a href="<%=basePath%>oskaHtml/products/products.jsp?productType='+ dataList[i]['proTypeId'] +'">'+ dataList[i]['proTypeName'] +'</a>';
            }

            $("#productTypeList").html(htmlStr);
        })
    }

    function init() {
        var jsonObj = {nub:0,size:2,productType:"1"};
        getList(jsonObj);
    }
//    init();

</script>