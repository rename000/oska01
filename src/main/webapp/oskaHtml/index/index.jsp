<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<%

    String img01 = (String) request.getSession().getAttribute("img01");
    String img02 = (String) request.getSession().getAttribute("img02");
    String img03 = (String) request.getSession().getAttribute("img03");

%>


<!--banner轮播图-->
<!--<div class="">
<%--<div class="index-banner"><img src="<%=basePath%>static/images/index/index-banner.jpg"/></div>--%>

</div>-->

<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide index-banner-a"><img src="<%=basePath%>static/images/index/index-banner-a.jpg"/></div>
        <div class="swiper-slide index-banner-a"><img src="<%=basePath%>static/images/index/index-banner-a.jpg"/></div>
        <div class="swiper-slide index-banner-a"><img src="<%=basePath%>static/images/index/index-banner-a.jpg"/></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>

<!--介绍-->
<div class="w">
    <div class="index-block-a">
        <div class="about">
            <div class="about-box u-left">
                <h3 class="title font30 bold">
                    <em><img src="<%=basePath%>static/images/about-title.png"/><a href="javascrilt:;"><img src="<%=basePath%>static/images/about-more.png"/></a></em>
                    <p class="dt">关于阑风</p>
                </h3>
                <em class="font14">
                    阑风品牌地板自投放市场以来，<br>
							<span class="bold">始终秉承“行家、专家、管家”的品牌经营理念和服务宗旨，<br>
							不断开发和推行“欧洲品质、皇家时尚、健康华贵”的地板精品，<br>
							全方位推出了阑风实木、强化、多层实木、纯手工实木拼花地板等系列地板产品，</span><br>
                    并在业内首先倡导和推广欧视家3G健康环保理念地板，引领城市时尚消费者对现代家居、科学健康的住家时尚新观念，品牌知名度不断提升。<br><br>
                    专业化的经营、高品质的产品，让阑风品牌地板赢得了众多消费者的亲眯，为继续接受广大消费者的监督，阑风地板正展开新的品牌梦想之旅……
                </em>
            </div>
            <div class="about-img u-right">
                <img src="<%=basePath%>static/images/index/about-img.jpg"/>
            </div>
        </div>
    </div>
</div>

<div class="index-block-b">
    <div class="w">
        <!--产品分类-->
        <div class="product">
            <ul class="pro-item font16">
                <li><a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-a-img.jpg"/></a><p>实木系列</p></li>
                <li><a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-b-img.jpg"/></a><p>实木多层系列</p></li>
                <li style="margin-right: 0;"><a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-c-img.jpg"/></a><p>木门系列</p></li>
            </ul>


            <div class="clearfloat"></div>
        </div>

        <!--新闻-->
        <div class="news-item" >
            <div class=""><img class="u-left" src="<%=basePath%>static/images/index/news-title.jpg"/> <img class="u-right" src="<%=basePath%>static/images/index/news-banner.jpg"/></div>
            <!--列表-->

            <%--<div class="news-list">--%>
                <%--<div class="newBox">--%>
                    <%--<h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>--%>
                    <%--<p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>--%>
                    <%--<em class="date"><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>2015.12.08</a></em>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="news-list">--%>
                <%--<div class="newBox">--%>
                    <%--<h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>--%>
                    <%--<p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>--%>
                    <%--<em class="date"><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>2015.12.08</a></em>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="news-list">--%>
                <%--<div class="newBox">--%>
                    <%--<h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>--%>
                    <%--<p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>--%>
                    <%--<em class="date"><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></a></i>2015.12.08</em>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="clearfloat"></div>
        </div>
    </div>
</div>

<%--<!--联系地址-->--%>
<%--<div class="index-block-c">--%>
    <%--<div class="w">--%>
        <%--<div class="contact">--%>
            <%--<em class="u-left"><a href="javascript:;"><img src="<%=basePath%>static/images/nav-a-icon.png"/></a></em>--%>
            <%--<em class="u-left"><a href="javascript:;"><img src="<%=basePath%>static/images/nav-b-icon.png"/></a></em>--%>
            <%--<em class="u-left adrees font16 bold">--%>
                <%--<i class="u-left"><img src="<%=basePath%>static/images/nav-c-icon.png"/></i>--%>
                <%--<p>地址：南浔经济开发区方丁路<br />电话：0572-2809888     传真：0572-2807999  </p>--%>
            <%--</em>--%>
            <%--<div class="serBtn u-right">--%>
                <%--<a href="javascript:;"><img src="<%=basePath%>static/images/xl-wb-icon.png"/></a>--%>
                <%--<a href="javascript:;"><img src="<%=basePath%>static/images/tx-wb-icon.png"/></a>--%>
                <%--<a href="javascript:;"><img src="<%=basePath%>static/images/qq-icon.png"/></a>--%>
            <%--</div>--%>
            <%--<div class="clearfloat"></div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<!--底部版权-->--%>
<%--<div class="foot">--%>
    <%--<div class="mod">--%>
        <%--<div class="w">--%>
            <%--<div class="navBox">--%>
                <%--<dl class="navlist font14">--%>
                    <%--<dt>产品世界</dt>--%>
                    <%--<dd><a href="javascript:;">实木系列</a></dd>--%>
                    <%--<dd><a href="javascript:;">实木多层系列</a></dd>--%>
                    <%--<dd><a href="javascript:;">木门系列</a></dd>--%>
                <%--</dl>--%>
                <%--<dl class="navlist font14">--%>
                    <%--<dt>原材料生材基地</dt>--%>
                <%--</dl>--%>
                <%--<dl class="navlist font14">--%>
                    <%--<dt>新闻资讯</dt>--%>
                    <%--<dd><a href="javascript:;">企业新闻</a></dd>--%>
                    <%--<dd><a href="javascript:;">行业新闻</a></dd>--%>
                <%--</dl>--%>
                <%--<dl class="navlist font14">--%>
                    <%--<dt>阑风印象</dt>--%>
                    <%--<dd><a href="javascript:;">关于阑风</a></dd>--%>
                    <%--<dd><a href="javascript:;">品牌故事</a></dd>--%>
                    <%--<dd><a href="javascript:;">工程案列</a></dd>--%>
                <%--</dl>--%>
                <%--<dl class="navlist font14">--%>
                    <%--<dt>联系我们</dt>--%>
                <%--</dl>--%>
                <%--<div class="return-top u-right"><img src="<%=basePath%>static/images/fh-top.png"/></div>--%>
                <%--<div class="clearfloat"></div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="copyRight">--%>
        <%--<div class="w">--%>
            <%--<em>--%>
                <%--<p>CopyRight © 2017 www.lanfengfloor.com All Rights Reserved. 阑风实木仿古地板 版权所有</p>--%>
                <%--<p>KEYWORDS: 实木仿古地板 | 实木仿古地板厂家 | 实木仿古地板生产厂家 | 实木仿古地板供应商 | 实木拼花地板 | 实木拼花地板招商加盟</p>--%>
                <%--<p>友情链接：白乳胶 | ppr管材 | 皮带输送机 即热式电热水器价格 | 即热式电热水器哪个牌子好 | 超细重质碳酸钙</p>--%>
            <%--</em>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--&lt;%&ndash;<script>&ndash;%&gt;--%>
    <%--&lt;%&ndash;var swiper = new Swiper('.swiper-container', {&ndash;%&gt;--%>
        <%--&lt;%&ndash;pagination: '.swiper-pagination',&ndash;%&gt;--%>
        <%--&lt;%&ndash;paginationClickable: true,&ndash;%&gt;--%>
        <%--&lt;%&ndash;autoplay: 3000,&ndash;%&gt;--%>
        <%--&lt;%&ndash;loop : true,&ndash;%&gt;--%>
        <%--&lt;%&ndash;slidesPerView : 'auto',&ndash;%&gt;--%>
    <%--&lt;%&ndash;});&ndash;%&gt;--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>

<%@include file="../../common/htmlFooter.jsp" %>
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
    //获得新闻列表
    function getList(jsonObj){
        var urlVal = '<%=basePath%>' + 'news/getNewsList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
            newsListData = dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<div class="news-list"> <div class="newBox">'+
                '<h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">'+ dataList[i]['newsTitle'] +'</a></h3>'+
                '<p class="ellipsis-3">'+ dataList[i]['newsInfo'] +'</p>'+
                '<em class="date"><i class="u-right"></i><a href="<%=basePath%>'+'oskaHtml/news/newsDetail.jsp?newsType=4&newsId='+dataList[i]['newsId']+'">' +
                '<img src="<%=basePath%>static/images/arrow-r-con.png"/>'+ dataList[i]['createTime'].replace("-",".").replace("-",".") +'</a></em>'+
                '</div> </div>';
            }
            $("#newsList").append(htmlStr);
        })
    }
    function init() {
        var jsonObj = {type:"2"};
        getList(jsonObj);
    }
    init();
</script>