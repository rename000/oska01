<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--联系地址-->
<div class="index-block-c">
    <div class="w">
        <div class="contact">
            <em class="u-left"><a href="<%=basePath%>oskaHtml/material/material.jsp"><img src="<%=basePath%>static/images/nav-a-icon.png"/></a></em>
            <em class="u-left"><a href="<%=basePath%>oskaHtml/impression/case.jsp"><img src="<%=basePath%>static/images/nav-b-icon.png"/></a></em>
            <em class="u-left adrees font16 bold">
                <i class="u-left"><img src="<%=basePath%>static/images/nav-c-icon.png"/></i>
                <p>地址：南浔经济开发区方丁路<br />电话：0572-2809888     传真：0572-2807999  </p>
            </em>
            <div class="serBtn u-right">
                <a href="javascript:;"><img src="<%=basePath%>static/images/xl-wb-icon.png"/></a>
                <a href="javascript:;"><img src="<%=basePath%>static/images/tx-wb-icon.png"/></a>
                <a href="javascript:;"><img src="<%=basePath%>static/images/qq-icon.png"/></a>
            </div>
            <div class="clearfloat"></div>
        </div>
    </div>
</div>
<!--底部版权-->
<div class="foot">
    <div class="mod">
        <div class="w">
            <div class="navBox">
                <dl class="navlist font14" id="productTypeListS">
                    <dt>产品世界</dt>
                    <dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType=1">实木系列</a></dd>
                    <dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType=2">实木多层系列</a></dd>
                    <dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType=3">木门系列</a></dd>
                </dl>
                <dl class="navlist font14">
                    <dt>原材料生材基地</dt>
                </dl>
                <dl class="navlist font14">
                    <dt>新闻资讯</dt>
                    <dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType=1">企业新闻</a></dd>
                    <dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType=2">行业新闻</a></dd>
                </dl>
                <dl class="navlist font14">
                    <dt>阑风印象</dt>
                    <dd><a href="<%=basePath%>oskaHtml/impression/about.jsp">关于阑风</a></dd>
                    <dd><a href="<%=basePath%>oskaHtml/impression/story.jsp">品牌故事</a></dd>
                    <dd><a href="<%=basePath%>oskaHtml/impression/case.jsp">工程案列</a></dd>
                </dl>
                <dl class="navlist font14">
                    <dt>联系我们</dt>
                </dl>
                <div class="return-top u-right"><a href="#"><img src="<%=basePath%>static/images/fh-top.png"/></a></div>
                <div class="clearfloat"></div>
            </div>
        </div>
    </div>
    <div class="copyRight">
        <div class="w">
            <em>
                <p>CopyRight © 2017 www.lanfengfloor.com All Rights Reserved. 阑风实木仿古地板 版权所有</p>
                <p>KEYWORDS: 实木仿古地板 | 实木仿古地板厂家 | 实木仿古地板生产厂家 | 实木仿古地板供应商 | 实木拼花地板 | 实木拼花地板招商加盟</p>
                <p>友情链接：白乳胶 | ppr管材 | 皮带输送机 即热式电热水器价格 | 即热式电热水器哪个牌子好 | 超细重质碳酸钙</p>
            </em>
        </div>
    </div>
</div>

<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        autoplay: 3000,
        loop : true,
        slidesPerView : 'auto',
    });
</script>
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
            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<a href="<%=basePath%>oskaHtml/products/products.jsp?productType='+ dataList[i]['proTypeId'] +'">'+ dataList[i]['proTypeName'] +'</a>';
            }

            $("#productTypeList").html(htmlStr);

            var htmlStrS = "<dt>产品世界</dt>";
            for(var i=0;i<dataList.length;i++){
                htmlStrS +=  '<dd><a href="<%=basePath%>oskaHtml/products/products.jsp?productType='+ dataList[i]['proTypeId'] +'">'+ dataList[i]['proTypeName'] +'</a></dd>';
            }

            $("#productTypeListS").html(htmlStrS);

        })
    }

    function inits() {
        var jsonObj = {nub:0,size:2,productType:"1"};
        getList(jsonObj);
    }
    inits();

</script>
</body>
</html>
