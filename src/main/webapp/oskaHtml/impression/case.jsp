<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<!--案例主体-->
<div class="case-warp">
    <div class="w">
        <div class="box">
            <div class="info u-left">
                <div class="title"><img src="<%=basePath%>static/images/case-nav.png"/><p class="mbx">您当前位置：首页 - 阑风印象 - 工程案例</p></div>
                <div class="name font18">
                    <em id="caseCount">1/30</em>
                    <p id="caseName">工程名称</p>
                </div>

                <div class="case">
                    <div class="case-page">
                        <a onclick="goPage(0)" class=""><img src="<%=basePath%>static/images/case-arrow-l.png"/></a>
                        <a onclick="goPage(1)" class=""><img src="<%=basePath%>static/images/case-arrow-r.png"/></a>
                    </div>
                    <ul class="list" id="caseList">
                        <%--<li class="over"><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                        <%--<li><img src="<%=basePath%>static/images/impression/case-img.png"/></li>--%>
                    </ul>
                </div>
            </div>

            <!--大图-->
            <div class="big-show u-right"><img id="bigShow" src="<%=basePath%>static/images/impression/case-img.jpg" style="width: 100%;height: 100%"/></div>
        </div>
    </div>
</div>

<!--底部版权-->
<div class="case-foot">
    <div class="w">
        CopyRight © 2017 www.lanfengfloor.com All Rights Reserved. 阑风实木仿古地板 版权所有
        <%--CopyRight © 2017 www.oskafloor.com All Rights Reserved. 欧饰家实木仿古地板 版权所有--%>
    </div>
</div>
</body>
</html>

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
    var pageCount = 0;
    function getListInit(jsonObj){
        var urlVal = '<%=basePath%>' + 'cases/getCasesList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
//            console.log('dataList===='+JSON.stringify(dataList));

            $("#bigShow").attr("src",dataList[0]['caseImg'] );

            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                if(i==0){
                    htmlStr += '<li><img class="over" data-nub="'+(i+1)+'" title="'+ dataList[i]['caseName'] +'" src="'+ dataList[i]['caseImg'] +'"/></li>';
                }else{
                    htmlStr += '<li><img data-nub="'+(i+1)+'" title="'+ dataList[i]['caseName'] +'" src="'+ dataList[i]['caseImg'] +'"/></li>';
                }
            }
            $("#caseList").html(htmlStr);

            pageCount = data.data.count;
            $("#caseCount").html("1/"+pageCount);
            $("#caseCount").html("1/"+pageCount);
            $("#caseName").html(dataList[0]['caseName'] );

        })
    }

    function getList(jsonObj){
        var urlVal = '<%=basePath%>' + 'cases/getCasesList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr += '<li><img data-nub="'+(i+1)+'" title="'+ dataList[i]['caseName'] +'" src="'+ dataList[i]['caseImg'] +'"/></li>';
            }
            $("#caseList").html(htmlStr);
        })
    }

    function init() {
        var jsonObj = {nub:0,size:2};
        getListInit(jsonObj);
    }
    init();

    var pageNub = 0;
    var pageSize = 2;
    function goPage(type){
        if(type==0){
            pageNub--;
            if(pageNub < 0){
                pageNub = 0;
                return;
            }else {
                var jsonObj = {nub:pageNub*pageSize,size:pageSize};
                getList(jsonObj);
            }

        }else if(type==1){
            pageNub++;
            if(pageNub >= Math.ceil(pageCount/pageSize)){
                pageNub = Math.ceil(pageCount/pageSize)-1;
            }else{
                var jsonObj = {nub:pageNub*pageSize,size:pageSize};
                getList(jsonObj);
            }

        }

    }

    $("body").on("click","#caseList li",function(){
        $("#caseList li").removeClass("over");
        $(this).addClass("over");
        var srcVal = $(this).find("img").attr("src");
        $("#bigShow").attr("src",srcVal);

        var dataNub = $(this).find("img").attr("data-nub")
        $("#caseCount").html( (pageNub*pageSize)+parseInt(dataNub) + "/"+pageCount);
        $("#caseName").html($(this).find("img").attr("title"));
    });
</script>
