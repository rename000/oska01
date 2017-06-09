<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<!--banner轮播图-->
<!--<div class="">
    <div class="index-banner"><img src="images/index/index-banner.jpg"/></div>

</div>-->

<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide index-banner-a"><img src="<%=basePath%>static/images/index/index-banner-a.jpg"/></div>
        <div class="swiper-slide index-banner-b"><img src="<%=basePath%>static/images/index/index-banner-b.jpg"/></div>
        <div class="swiper-slide index-banner-c"><img src="<%=basePath%>static/images/index/index-banner-c.jpg"/></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>

<!--介绍-->
<div class="w">
    <div class="index-block-a">
        <div class="about">
            <div class="about-box">
                <h3 class="title font30 bold">欧饰家<br />实木仿古地板</h3>
                <em class="font14">
                    <p>欧饰家品牌地板自投放市场以来，始终秉承“行家、专家、管家”的品牌经营理念和服务宗旨，不断开发和推行“欧洲品质、皇家时尚、健康华贵”的地板精品，全方位推出了欧饰家实木、强化、多层实木、纯手工实木拼花地板等系列地板产品，并在业内首先倡导和推广欧视家3G健康环保理念地板，引领城市时尚消费者对现代家居、科学健康的住家时尚新观念，品牌知名度不断提升。</p>
                    <br /><p>专业化的经营、高品质的产品，让欧饰家品牌地板赢得了众多消费者的亲眯，为继续接受广大消费者的监督，欧饰家地板正展开新的品牌梦想之旅……</p>
                </em>
            </div>
        </div>
        <div class="about-img"><i class="more"><a href="javascript:;"><img src="<%=basePath%>static/images/index/more.jpg"/></a></i><img src="<%=basePath%>static/images/index/about-img.jpg"/></div>
    </div>
</div>

<div class="index-block-b">
    <div class="w">
        <!--产品分类-->
        <div class="product">
            <ul class="pro-list">
                <li>
                    <em><img class="showImg" src="<%=basePath%>static/images/index/pro-a-img.jpg"/></em>
                    <p class="name font16">橡木仿古</p>
                    <!--鼠标经过-->
                    <div class="pro-hover">
                        <a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-a-hover.png"/></a>
                        <em>
                            <a href="javascript:;">
                                <i class="u-right"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>
                                <img src="<%=basePath%>static/images/index/more.png"/>
                            </a>
                        </em>
                    </div>
                </li>
                <li>
                    <em><img class="showImg" src="<%=basePath%>static/images/index/pro-b-img.jpg"/></em>
                    <p class="name font16">橡木人字拼</p>
                    <!--鼠标经过-->
                    <div class="pro-hover">
                        <a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-b-hover.png"/></a>
                        <em>
                            <a href="javascript:;">
                                <i class="u-right"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>
                                <img src="<%=basePath%>static/images/index/more.png"/>
                            </a>
                        </em>
                    </div>
                </li>
                <li>
                    <em><img class="showImg" src="<%=basePath%>static/images/index/pro-c-img.jpg"/></em>
                    <p class="name font16">原木手工拼花</p>
                    <!--鼠标经过-->
                    <div class="pro-hover">
                        <a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-c-hover.png"/></a>
                        <em>
                            <a href="javascript:;">
                                <i class="u-right"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>
                                <img src="<%=basePath%>static/images/index/more.png"/>
                            </a>
                        </em>
                    </div>
                </li>
                <li>
                    <em><img class="showImg" src="<%=basePath%>static/images/index/pro-d-img.jpg"/></em>
                    <p class="name font16">强化地板</p>
                    <!--鼠标经过-->
                    <div class="pro-hover">
                        <a href="javascript:;"><img src="<%=basePath%>static/images/index/pro-d-hover.png"/></a>
                        <em>
                            <a href="javascript:;">
                                <i class="u-right"><img src="<%=basePath%>static/images/arrow-r-con.png"/></i>
                                <img src="<%=basePath%>static/images/index/more.png"/>
                            </a>
                        </em>
                    </div>
                </li>
            </ul>


            <div class="clearfloat"></div>
        </div>

        <!--新闻-->
        <div class="news">
            <div class=""><img class="u-left" src="<%=basePath%>static/images/index/news-title.jpg"/> <img class="u-right" src="<%=basePath%>static/images/index/news-banner.jpg"/></div>
            <!--列表                  ********************************-->
            <div class="news-list">
                <div class="newBox">
                    <h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>
                    <p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>
                    <em class="date"><i class="u-right"></i><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/>2015.12.08</a></em>
                </div>
            </div>
            <div class="news-list">
                <div class="newBox">
                    <h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>
                    <p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>
                    <em class="date"><i class="u-right"></i><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/>2015.12.08</a></em>
                </div>
            </div>
            <div class="news-list">
                <div class="newBox">
                    <h3 class="title font18 bold"><span class="font30">◇</span><a href="javascript:;">买木门关键看“门道” 花样再多也...</a></h3>
                    <p class="ellipsis-3">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</p>
                    <em class="date"><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></a></i>2015.12.08</em>
                </div>
            </div>
            <div class="clearfloat"></div>
        </div>
    </div>
</div>

<%@include file="../../common/htmlFooter.jsp" %>