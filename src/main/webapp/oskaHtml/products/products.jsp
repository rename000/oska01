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
            <ul class="list" id="productList">

                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<div class="pro-box">--%>
                        <%--<em class="show"><a href="javascript:;"><img alt="产品名称" src="<%=basePath%>static/images/product/pro-img.jpg"/></a></em>--%>
                        <%--<dl class="info">--%>
                            <%--<dt>产品名称：</dt>--%>
                            <%--<dd>白象罗马假日</dd>--%>
                        <%--</dl>--%>
                    <%--</div>--%>
                <%--</li>--%>
            </ul>

            <!--翻页-->
            <div class="pages">
                <a href=""><i><</i> 上一页</a>
                <a href="" class="over">1</a>
                <%--<a href="#">2</a>--%>
                <%--<a href="#">3</a>--%>
                <%--<a href="#">4</a>--%>
                <%--<a href="#">5</a>--%>
                <%--<a href="#">...</a>--%>
                <%--<a href="#">99</a>--%>
                <a href="">下一页 <i>></i></a>
            </div>
        </div>
    </div>
</div>

<!--产品弹窗-->
<div class="pro-blcok-up">
    <div class="case-box">
        <em class="bigImg"><img id="product_img" data-imgId="" src="<%=basePath%>static/images/product/pro-img.jpg"/></em>
        <div class="info">
            <em class="close"><span class="u-right"><img src="<%=basePath%>static/images/case-close.png"/></span></em>
            <dl class="ms">
                <dt class="font18">产品名称：</dt>
                <dd class="font30 bold" id="product_name">森林乐章</dd>
                <dt class="font18">产品简介：</dt>
                <dd class="font18" id="product_info">0000</dd>
            </dl>
            <div class="page">
                <a onclick="leftOrRight(1)" id="product_left" class="arrow-left" href="javascript:;">-</a>
                <a onclick="leftOrRight(2)" id="product_right" class="arrow-right" href="javascript:;">-</a>
                <%--<a onclick="leftOrRight(1)" id="product_left" class="arrow-left" href="javascript:;">森林乐章</a>--%>
                <%--<a onclick="leftOrRight(2)" id="product_right" class="arrow-right" href="javascript:;">红橡女神</a>--%>
            </div>
        </div>
    </div>
</div>
<!--弹框黑色阴影-->
<div class="proBg"></div>

<%@include file="../../common/htmlFooter.jsp" %>

<script type="text/javascript">

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

    var productListData = [];
    //获得产品列表
    function getProductList(){
        var jsonObj = {};
        var urlVal = '<%=basePath%>' + 'product/getProductList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
            productListData = dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<li  id="product_'+ dataList[i]['productId']  +'"><div class="pro-box">'+
                    '<em class="show"><a href="javascript:;"><img alt="产品名称" src="'+ dataList[i]['productImg'] +'"/></a></em>'+
                    '<dl class="info"> <dt>产品名称：</dt> <dd>'+ dataList[i]['productName'] +'</dd> </dl>'+
                    '</div></li>';
            }

            $("#productList").html(htmlStr);
        })
    }

    function init() {
        getProductList();
    }
    init();

</script>

<script type="text/javascript">

    productListData = [
        {"count":"","createTime":1497237694000,"nub":0,"productId":2022,"productImg":"http://www.oskafloor.com/userfile/20121213161251631.jpg","productInfo":"产品简介01","productName":"产品名称02","size":10},
        {"count":"","createTime":1497237637000,"nub":0,"productId":2021,"productImg":"http://www.oskafloor.com/userfile/201211510848789.jpg","productInfo":"产品简介01","productName":"产品名字01","size":10},
        {"count":"","createTime":"","nub":0,"productId":2030,"productImg":"/oska/static/upload/product/Hydrangeas.jpg","productInfo":"test测试10","productName":"test","size":10}
    ];

    //获得产品详情
    function getProductDetail(productIdVal){

        for(var i=0;i<productListData.length;i++){

            if(parseInt(productListData[i].productId) == productIdVal){
                $("#product_img").attr("src",productListData[i]['productImg']);
                $("#product_name").html(productListData[i]['productName']);
                $("#product_info").html(productListData[i]['productInfo']);
                $("#product_info").html(productListData[i]['productInfo']);

                //左右页名
//                if(i > 0 && i < productListData.length){
//                    $("#product_left").html(productListData[i-1]['productName']);
//                    $("#product_right").html(productListData[i+1]['productName']);
//                }else if(i <=  0){
//                    $("#product_left").html(productListData[productListData.length-1]['productName']);
//                    $("#product_right").html(productListData[i+1]['productName']);
//                }else{
//                    $("#product_left").html(productListData[i-1]['productName']);
//                    $("#product_right").html(productListData[productListData.length-1]['productName']);
//                }

            }else {
                console.log("不支持不存在的productIdVal")
            }

        }

    }

    /*点击放大*/
    $('body').on("click",".list li",function(){
        var productIdVal = parseInt($(this).attr("id").split('_')[1]);
        getProductDetail(productIdVal);
        $('.pro-blcok-up').fadeIn(300);
        $('.proBg').fadeIn(300);
    })
    $('.caseBg,.close span').click(function(){
        $('.pro-blcok-up').fadeOut();
        $('.proBg').fadeOut();
    })

    var sqlJson_Data = productListData;
  //左右切换
    function leftOrRight(type){

        var imgId = $("#product_img").attr("data-imgId");
        var imgNum = 0;
        for (var i=0;i<sqlJson_Data.length;i++) {
            if(sqlJson_Data[i].productId == imgId){
                imgNum = i
            }
        };
        if(type==1){
            imgNum--;
        }else{
            imgNum++;
        }
        //判断是否跳到第一张或最后一张
        if(imgNum >= 0 && imgNum < sqlJson_Data.length){

            $("#product_img").attr("src",sqlJson_Data[imgNum]["productImg"]);
            $("#product_info").text(sqlJson_Data[imgNum].productInfo);
            $("#product_name").text(sqlJson_Data[imgNum].productName);
            $("#product_img").attr("data-imgId",sqlJson_Data[imgNum].productId);

//            $("#product_left").html(sqlJson_Data[imgNum-1]['productName']);
//            $("#product_right").html(sqlJson_Data[imgNum+1]['productName']);

        }else if(imgNum <= 0) {
            imgNum = sqlJson_Data.length-1;//循环到第一张
            $("#product_img").attr("src",sqlJson_Data[imgNum]["productImg"]);
            $("#product_info").text(sqlJson_Data[imgNum].productInfo);
            $("#product_name").text(sqlJson_Data[imgNum].productName);
            $("#product_img").attr("data-imgId",sqlJson_Data[imgNum].productId);

//            $("#product_left").html(sqlJson_Data[0]['productName']);
//            $("#product_right").html(sqlJson_Data[imgNum-1]['productName']);

        }else{
            imgNum = 0;//循环到最后一张
            $("#product_img").attr("src",sqlJson_Data[imgNum]["productImg"]);
            $("#product_info").text(sqlJson_Data[imgNum].productInfo);
            $("#product_name").text(sqlJson_Data[imgNum].productName);
            $("#product_img").attr("data-imgId",sqlJson_Data[imgNum].productId);

//            $("#product_left").html(sqlJson_Data[imgNum]['productName']);
//            $("#product_right").html(sqlJson_Data[sqlJson_Data.length-1]['productName']);
        }

    };

</script>