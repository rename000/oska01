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
        品牌故事
        <em class="en"><img src="<%=basePath%>static/images/yx-nav-bg.png"/></em>
    </div>

</div>

<!--内容-->
<div class="content">
    <div class="w">
        <div class="mbx">您当前位置：<a href="javascript:;">首页</a> - 欧饰家印象 - 品牌故事</div>
        <div class="about-warp">
            <div class="title"></div>
            <div class="box">
                <em class="font14" id="div1">
                    欧饰家品牌地板自投放市场以来，<br />
                    <span class="font18 bold">始终秉承“行家、专家、管家”的品牌经营理念和服务宗旨，<br />
						不断开发和推行“欧洲品质、皇家时尚、健康华贵”的地板精品，<br />
						全方位推出了欧饰家实木、强化、多层实木、纯手工实木拼花地板等系列地板产品，</span><br />
                    并在业内首先倡导和推广欧视家3G健康环保理念地板，引领城市时尚消费者对现代家居、科学健康的住家时尚新观念，品牌知名度不断提升。<br /><br />
                    专业化的经营、高品质的产品，让欧饰家品牌地板赢得了众多消费者的亲眯，为继续接受广大消费者的监督，欧饰家地板正展开新的品牌梦想之旅……
                </em>
            </div>
        </div>
    </div>
</div>

<%@include file="../../common/htmlFooter.jsp" %>
<script type="text/javascript">
    function getList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'impression/getImpressionList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
                console.log('data===='+JSON.stringify(data));
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;

                    $("#div1").html(dataList[0].impressionDesc);
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

    function init() {
        var jsonObj = {
            impressionId:2,
        }
        getList(jsonObj);
    }
    init();
</script>