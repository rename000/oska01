<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>


<%

    String  newsId = request.getParameter("newsId");

    String  type = request.getParameter("type");
    if("".equals(type)){type = "1";}

%>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp?active=1"><i class="fa fa-home"></i> 主页</a></li>
    <li><a href="<%=basePath%>oskaSystems/news/news.jsp?active=3"><i class="fa fa-columns"></i> 新闻管理</a></li>
    <li class="active">
        <a href="#">
            编辑
            <%=("1".equals(type)?"新闻(企业／行业)":"")%>
            <%=("2".equals(type)?"首页新闻":"")%>
            <%=("3".equals(type)?"推荐新闻":"")%>
        </a>
    </li>
</ul>

<section class="panel panel-default add-b-t" style="min-width: 1000px;overflow: auto;">

    <div class="a-content">

        <header class="h4 text-left padder padder-v m-b">
            <strong>
                编辑
                <%=("1".equals(type)?"新闻(企业／行业)":"")%>
                <%=("2".equals(type)?"首页新闻":"")%>
                <%=("3".equals(type)?"推荐新闻":"")%>
            </strong>
        </header>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">新闻标题：</label>
            <div class="t-cell in-input in-w-400"><input type="text"  id="newsTitle" class="form-control" placeholder="请填写新闻名称" value=""></div>
        </row>

        <row class="dis-table padder m-b m-l-40 <%=("1".equals(type)?"":"y-hide")%>">
            <label class="t-cell in-name in-v-m">新闻类型：</label>
            <div class="t-cell in-input in-w-200">
                <select id="newsType" class="form-control" >
                    <option value="1">企业新闻</option>
                    <option value="2">行业新闻</option>
                </select>
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40 <%=("3".equals(type)?"":"y-hide")%>">
            <label class="t-cell in-name in-v-t">产品图：</label>
            <div class="t-cell in-input">
                <img id="img01" src="<%=basePath%>static/img/bmz.jpg" class="in-pro-img" style="width: 322px;height: 260px">
                <div class="btn btn-primary in-v-t y-pointer">上传图片
                    <%--<input id="file01" type="file" class="fileBtn">--%>
                    <input id="file01" type="file" class="fileBtn" name="file"/>
                </div>
                <input id="input01" type="text" value="" class="y-hide" data-value="上传图片的值">
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">新闻简介：</label>
            <div class="t-cell in-input in-w-500">
                <textarea id="newsInfo" class="form-control" rows="5"></textarea>
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="in-name in-v-t">新闻内容：</label>
            <div class="a-content m-v-40 text-center" style="margin-left: 10%;">
                <div id="div1" style="height: 400px;">
                    <p></p>
                </div>
            </div>
        </row>


        <row class="dis-table padder m-b m-l-40 m-t-lg">
            <label class="t-cell in-name in-v-t">&nbsp;</label>
            <div class="t-cell in-input">
                <a id="saveBtn" class="btn btn-primary in-w-120 m-b-lg">保存</a>
            </div>
        </row>
    </div>

</section>

<%@include file="../commonSys/systemFooter.jsp" %>

<link rel="stylesheet" href="<%=basePath%>static/js/wangEditor/css/wangEditor.min.css" type="text/css" />
<script type="text/javascript" src="<%=basePath%>static/js/wangEditor/wangEditor.min.js" ></script>
<script>
    var editor = new wangEditor('div1');
    editor.create();
</script>

<script type="text/javascript">

    //编辑
    function editFun(jsonObj) {
        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>news/updateNews',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    window.location.href = '<%=basePath%>oskaSystems/news/news.jsp?active=3';
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

    //获取新闻信息
    function getList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'news/getNewsList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    //赋值
                    $("#newsTitle").val(""+dataList[0]['newsTitle']);
                    $("#newsInfo").val(""+dataList[0]['newsInfo']);
                    $("#input01").val(""+dataList[0]['newsImg']);
                    $("#img01").attr("src",""+dataList[0]['newsImg']);
                    $("#newsType").val(""+dataList[0]['newsType']);
                    $("#div1").html(""+dataList[0]['newsDesc']);

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

    //初始化
    function init(){
        var newsIdVal = "<%=newsId%>";

        if(newsIdVal=="" || newsIdVal==undefined){
            window.location.href = '<%=basePath%>oskaSystems/news/news.jsp?active=3';
        }else {
            var jsonObj = {newsId:newsIdVal};
            getList(jsonObj);
        }

    }
    init();

    uploadFileFun('file01','input01','<%=basePath%>upload/uploadNewsImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input01','img01');
    });

    //保存
    $("#saveBtn").click(function(){
        var newsTitleVal = $("#newsTitle").val();
        var newsInfoVal = $("#newsInfo").val();
        var newsDescVal =  $("#div1").html();
        var newsTypeVal = $("#newsType").val();
        var newsImgVal = $("#input01").val();
        //校验
        if(newsTitleVal == ''){
            alert("请填写新闻标题")
            return;
        }
        if(newsInfoVal == ''){
            alert("请填写新闻简介")
            return;
        }
        if(newsDescVal == ''){
            alert("请填写新闻内容")
            return;
        }

        var jsonObj = {
            newsId:<%=newsId%>,
            newsTitle:newsTitleVal,
            newsInfo:newsInfoVal,
            newsDesc:newsDescVal,
            <%=("1".equals(type)?"newsType:newsTypeVal,":"")%>
            <%=("3".equals(type)?"newsImg:newsImgVal":"")%>
        };


        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>news/updateNews',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    window.location.href = '<%=basePath%>oskaSystems/news/news.jsp?active=3';
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }

        };
        $.ajax(option);
    });

</script>