<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<!--banner轮播图-->
<div class="material-banner">
    <div class="w">
        <img src="<%=basePath%>static/images/material/material-banner.jpg"/>
    </div>
</div>

<!--页面标题-->
<div class="navBig">
    <div class="w">
        企业新闻
        <em class="en"><img src="<%=basePath%>static/images/news-nav-bg.png"/></em>
    </div>

</div>

<!--内容-->
<div class="content">
    <div class="w">
        <div class="mbx">您当前位置：<a href="javascript:;">首页</a> - <a href="javascript:;">产品世界</a> - 橡木仿古</div>
        <div class="news-detail">
            <h3><span class="font24">软木地板如何选购 软木地板选购保养全攻略</span><p>发表时间：2016.11.12    点击：72</p></h3>
            <em class="box font14">
                软木地板分类：软木地板按铺装方式可分为粘贴式软木地板和锁扣式软木地板。<br /><br />
                粘贴式软木地板一般分为三层结构，最上面一层是耐磨水性涂层；中间是纯手工打磨的珍稀软木面层，该层为软木地板花色；最下面是工程学软木基层。有些产品也会添加树皮贴面和静音隔层。<br /><br />
                锁扣式软木地板一般分为六层，最上面第一层是耐磨水性涂层；第二层是纯手工打磨软木面层，该层为软木地板花色；第三层是一级人体工程学软木基层；第四层是7mm后的HDF(高密度密度板)；第五层是锁扣拼接系统；最下面第六层是二级环境工程学软木基层。<br />
                按照产品的结构，软木地板又可分为涂装面、PVC贴面、聚氯乙烯贴面、塑料软木地板和多层复合软木地板。<br /><br />
                涂装面软木地板：在软木地板表面作涂装。即在胶结软木的表面涂装UV清漆或色漆或光敏清漆PVA。根据漆种不同，又可分为三种，即高光、亚光和平光。近年来,出现采用PU漆的产品,PU漆相对柔软,可渗透进地板,不容易开裂变形。<br /><br />
                pvc贴面软木地板：在软木地板表面覆盖PVC贴面，其结构通常为四层，表层采用PVC贴面，其厚度为0.45mm；第二层为天然软木装饰层其厚度为0.8mm；第三层为胶结软木层其厚度为1.8mm；最底层为应力平衡兼防水PVC层。<br /><br />
                聚氯乙烯贴面：厚度为0.45mm；第二层为天然薄木，其厚度为0.45mm；第三层为胶结软木，其厚度为2mm左右；底层为PVC板与第三类一样防水性好，同时又使板面应力平衡，其厚度为0.2mm左右。<br /><br />
                塑料软木地板：一般为树脂胶结软木地板、橡胶软木地板。<br /><br />
                多层复合软木地板：第一层为漆面耐磨层，第二层为软木实木层，第三层为实木多层板或HDF高密度板层，第四层为软木平衡静音层。<br /><br />
                软木地板和实木地板相比较：<br />
                软木地板的缺点：软木地板的花色选择少，图案相对来说不是很符合一般人的审美观，不及实木地板纹理自然。<br /><br />
                软木地板清洁打理较麻烦，会更容易存灰，需要 正确的使用和维护，清洁打理上更精心一些。普通软木地板的防水、防腐性能不如强化地板，水分也更容易渗入，要防止油墨、口红等弄在地板上，否则就容易渗入 不易清洁。
            </em>
            <div class="news-page">
                <div class="wx">
                    <i class="line"></i>
                    <span>本文整理编辑：实木仿古地板、实木拼花地板厂家http://www.oskafloor.com</span>
                </div>
                <ul class="page-box font14">
                    <li><a href="javascript:;"><em class="prev">绿色环保木地板的优越性</em></a></li>
                    <li class="txt-r"><a href="javascript:;"><em class="next">绿色环保木地板的优越性</em></a></li>
                </ul>
            </div>
            <!--返回-->
            <div id="newScroll">
                <div class="return">
                    <a href="<%=basePath%>oskaHtml/news/news.jsp"><img src="<%=basePath%>static/images/news/fh-icon.png"/></a>
                    <a href="javascript:;" class="fd-btn"><img src="<%=basePath%>static/images/news/A-icon.png"/></a>
                    <a href="javascript:;" class="sx-btn"><img src="<%=basePath%>static/images/news/A--icon.png"/></a>
                </div>
            </div>

            <!--字体点击大小-->
            <script type="text/javascript">
                $(function(){
                    $('.fd-btn').click(function(){
                        $('.news-detail .box').css('font-size','25px')
                    })
                    $('.sx-btn').click(function(){
                        $('.news-detail .box').css('font-size','14px')
                    })
                })

                /*案例滚动*/
                window.onscroll=function(){
                    var t=document.documentElement.scrollTop||document.body.scrollTop;
                    var membernav=document.getElementById("newScroll");
                    if(t>= 830){
                        membernav.className = "newScroll";
                    }else{
                        membernav.className = "membernav";
                    }
                }

            </script>


        </div>
    </div>
</div>

<%@include file="../../common/htmlFooter.jsp" %>

