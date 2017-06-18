<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../common/htmlHeader.jsp" %>

<%

    String  newsType = request.getParameter("newsType");
    if("".equals(newsType) || "null".equals(newsType) || newsType == null){
        newsType = "1";
    }

%>


<link rel="stylesheet" type="text/css" href="<%=basePath%>static/js/pageHtml/paging.css"/>
<script type="text/javascript" src="<%=basePath%>static/js/pageHtml/pagePlugin.js"></script>
<!--banner轮播图-->
<div class="material-banner">
    <div class="w">
        <img src="<%=basePath%>static/images/material/material-banner.jpg"/>
    </div>
</div>

<!--页面标题-->
<div class="navBig">
    <div class="w">
        <%=("1".equals(newsType)?"企业新闻":"")%>
        <%=("2".equals(newsType)?"行业新闻":"")%>
        <em class="en"><img src="<%=basePath%>static/images/news-nav-bg.png"/></em>
    </div>

</div>

<!--企业新闻头条-->
<div class="news-head">
    <div class="w">
        <div class="mbx">您当前位置：<a href="<%=basePath%>oskaHtml/index/index.jsp">首页</a> - <a href="<%=basePath%>oskaHtml/news/news.jsp">新闻资讯</a> -
            <%=("1".equals(newsType)?"企业新闻":"")%>
            <%=("2".equals(newsType)?"行业新闻":"")%>
        </div>
        <div class="box">
            <div class="list">
                <h3 class="font18 bold ellipsis"><i class="font30">◇</i> <a href="javascript:;">买木门关键看“门道”花样再多也...</a></h3>
                <div class="ms">
                    <dl class="info">
                        <dt class="font14">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</dt>
                        <dd><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></a></i>2015.12.08</dd>
                    </dl>
                    <em class="show"><a href="javascript:;"><img src="<%=basePath%>static/images/news/news-img.jpg"/></a></em>
                </div>

            </div>
            <div class="list">
                <h3 class="font18 bold ellipsis"><i class="font30">◇</i> <a href="javascript:;">买木门关键看“门道”花样再多也...</a></h3>
                <div class="ms">
                    <dl class="info">
                        <dt class="font14">环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等之后。会闻到一股强烈的刺激性气味感到辣眼睛...</dt>
                        <dd><i class="u-right"><a href="javascript:;"><img src="<%=basePath%>static/images/arrow-r-con.png"/></a></i>2015.12.08</dd>
                    </dl>
                    <em class="show"><a href="javascript:;"><img src="<%=basePath%>static/images/news/news-img.jpg"/></a></em>
                </div>
            </div>
        </div>

    </div>
</div>

<!--内容-->
<div class="content">
    <div class="w">
        <div class="news">
            <ul class="list" id="newsList">
                <li>
                    <a href="<%=basePath%>oskaHtml/news/newsDetail.jsp">
                        <dl class="ml">
                            <dt class="font18"><span class="font18 bold">◇</span> 绿色环保木地板的优越性</dt>
                            <dd>环保地板不会产生室内空气二次污染，许多消费者在购买了某些木制品包括木地板、家具等后...会闻到一股强烈的刺激性气味，感到辣眼睛、流泪</dd>
                        </dl>
                    </a>
                    <em class="time">
                        <p>2015.12.08</p>
                        <p><img src="<%=basePath%>static/images/arrow-r-con.png"/></p>
                    </em>
                </li>
            </ul>
            <!--翻页-->
            <%--<div class="pages">--%>
                <%--<a href="#"><i><</i> 上一页</a>--%>
                <%--<a href="#" class="over">1</a>--%>
                <%--&lt;%&ndash;<a href="#" class="over">2</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="#">3</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="#">4</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="#">5</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="#">...</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="#">99</a>&ndash;%&gt;--%>
                <%--<a href="#">下一页 <i>></i></a>--%>
            <%--</div>--%>

            <div class="pages" id="paging">

            </div>

        </div>
    </div>
</div>

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

    //获得新闻列表
    function getList(jsonObj){
        var urlVal = '<%=basePath%>' + 'news/getNewsList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
            newsListData = dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<li class="li-id" id="news_'+ dataList[i]['newsId'] +'"> <a> <dl class="ml">'+
                        '<dt class="font18"><span class="font18 bold">◇</span> '+ dataList[i]['newsTitle'] +'</dt>'+
                        '<dd>'+ dataList[i]['newsInfo'] +'</dd>'+
                        '</dl> </a> <em class="time"><p>'+ dataList[i]['createTime'].replace("-",".").replace("-",".") +'</p>'+
                        '<p><img src="<%=basePath%>static/images/arrow-r-con.png"/></p> </em> </li>';

            }

            $("#newsList").html(htmlStr);
            createPagePlugin(data.data.count,jsonObj.size);

        })
    }

    //获得新闻列表
    var newsListData = [];
    function getNewsList(jsonObj){
        var urlVal = '<%=basePath%>' + 'news/getNewsList';

        getData(jsonObj,urlVal,function (data) {
            var dataList = data.data.dataList;
            newsListData = dataList;
//            console.log('dataList===='+JSON.stringify(dataList));
            var htmlStr = "";
            for(var i=0;i<dataList.length;i++){
                htmlStr +=  '<li class="li-id" id="news_'+ dataList[i]['newsId'] +'"> <a> <dl class="ml">'+
                    '<dt class="font18"><span class="font18 bold">◇</span> '+ dataList[i]['newsTitle'] +'</dt>'+
                    '<dd>'+ dataList[i]['newsInfo'] +'</dd>'+
                    '</dl> </a> <em class="time"><p>'+ dataList[i]['createTime'].replace("-",".").replace("-",".") +'</p>'+
                    '<p><img src="<%=basePath%>static/images/arrow-r-con.png"/></p> </em> </li>';

            }

            $("#newsList").html(htmlStr);
        })
    }

    //分页 pagePlugin
    var createPagePlugin = function(total, size) {
        $("#paging").empty();
        paging = pagePlugin.createPaging({
            renderTo: 'paging',
            total: total,
            pageSize: size,
            currentPage:1,
            isShowTotalPage:false,
            isShowTotalRecords:false,
            isGoPage:false
        });
        paging.goPage = function(from, to) {
            pageFun(from - 1, size);
        }
    };

    //翻页
    var pageFun = function(from,pageSize){
        var jsonObj = {nub: "" + from,size: "" + pageSize,newsType:"<%=newsType%>"};
        getNewsList(jsonObj);
    }

    function init() {
        var jsonObj = {nub:0,size:2,newsType:"<%=newsType%>"};
        getList(jsonObj);
    }
    init();




    //go to detail
    $('body').on("click",".li-id",function () {
        var newsIdVal = $(this).attr("id").split("_")[1];
        window.location.href = "<%=basePath%>"+"oskaHtml/news/newsDetail.jsp?newsType=<%=newsType%>&newsId="+newsIdVal;
    })
</script>