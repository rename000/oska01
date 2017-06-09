<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<!--banner轮播图-->
<div class="product-banner">
    <div class="w">
        <img src="<%=basePath%>static/images/product/product-bannner.jpg"/>
    </div>
</div>

<!--页面标题-->
<div class="navBig">
    <div class="w">
        橡木仿古
        <em class="en"><img src="<%=basePath%>static/images/product-nav-bg.png"/></em>
    </div>

</div>

<!--内容-->
<div class="content">
    <div class="w">
        <div class="mbx">您当前位置：<a href="javascript:;">首页</a> - <a href="javascript:;">产品世界</a> - 橡木仿古</div>
        <div class="product">
            <ul class="list">
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
                <li>
                    <div class="pro-box">
                        <em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>
                        <dl class="info">
                            <dt>产品名称：</dt>
                            <dd>白象罗马假日</dd>
                        </dl>
                    </div>
                </li>
            </ul>

            <!--翻页-->
            <div class="pages">
                <a href="#"><i><</i> 上一页</a>
                <a href="#">1</a>
                <a href="#" class="over">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">...</a>
                <a href="#">99</a>
                <a href="#">下一页 <i>></i></a>
            </div>
        </div>
    </div>
</div>

<!--产品弹窗-->
<div class="pro-blcok-up">
    <div class="case-box">
        <em class="bigImg"><img src="<%=basePath%>static/images/product/pro-img.jpg"/></em>
        <div class="info">
            <em class="close"><span class="u-right"><img src="<%=basePath%>static/images/case-close.png"/></span></em>
            <dl class="ms">
                <dt class="font18">产品名称：</dt>
                <dd class="font30 bold">森林乐章</dd>
                <dt class="font18">产品简介：</dt>
                <dd class="font18">0000</dd>
            </dl>
            <div class="page">
                <a class="arrow-left" href="javascript:;">森林乐章</a>
                <a class="arrow-right" href="javascript:;">红橡女神</a>
            </div>
        </div>
    </div>
</div>
<!--弹框黑色阴影-->
<div class="proBg"></div>
<script type="text/javascript">
    $(function(){
        /*点击放大*/
        $('.list li').click(function(){
            $('.pro-blcok-up').fadeIn(300);
            $('.proBg').fadeIn(300);
        })
        $('.caseBg,.close span').click(function(){
            $('.pro-blcok-up').fadeOut();
            $('.proBg').fadeOut();
        })

    })
</script>

<%@include file="../../common/htmlFooter.jsp" %>

