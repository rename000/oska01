<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp"><i class="fa fa-home"></i> 主页</a></li>
    <li><a href="<%=basePath%>oskaSystems/news/news.jsp"><i class="fa fa-columns"></i> 新闻管理</a></li>
    <li class="active"><a href="#">新增新闻</a></li>
</ul>

<section class="panel panel-default add-b-t" style="min-width: 1000px;overflow: auto;">

    <div class="a-content">

        <header class="h4 text-left padder padder-v m-b"><strong>新增新闻</strong></header>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">新闻标题：</label>
            <div class="t-cell in-input in-w-200"><input type="text"  id="newsName" class="form-control" placeholder="请填写新闻名称" value=""></div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">新闻类型：</label>
            <div class="t-cell in-input in-w-200">
                <select id="newsType" class="form-control" >
                    <option value="1">企业新闻</option>
                    <option value="2">行业新闻</option>
                </select>
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">新闻简介：</label>
            <div class="t-cell in-input in-w-500">
                <textarea id="newsInfo" class="form-control" rows="5"></textarea>
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

<script type="text/javascript">

    uploadFileFun('file01','input01','<%=basePath%>upload/uploadImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input01','img01');
    });

    //保存
    $("#saveBtn").click(function(){
        var newsNameVal = $("#newsName").val();
        var newsInfoVal = $("#newsInfo").val();
        var newsDescVal =  $("#newsDesc").val();
        var newsTypeVal = $("#newsType").val();
        //校验
        if(newsNameVal == ''){
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
            newsTitle:newsNameVal,
            newsInfo:newsInfoVal,
            newsDesc:newsDescVal,
            newsType:newsTypeVal
        };


        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>news/addnews',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    window.location.href = '<%=basePath%>oskaSystems/news/news.jsp';
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