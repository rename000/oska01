<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<style>
    .in-pro-img {
        width: 522px;
        height: 260px;
    }
</style>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp"><i class="fa fa-home"></i> 主页</a></li>
    <li class="active"><a href="#"><i class="fa "></i> 网站首页管理</a></li>
</ul>

<section class="panel panel-default add-b-t" style="min-width: 1000px;overflow: auto;">

    <div class="a-content">

        <!-- 项目基本资料 -->
        <header class="h4 text-left padder padder-v m-b"><strong>网站首页管理</strong></header>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">首页轮播图一：</label>
            <div class="t-cell in-input">
                <img id="img01" src="<%=basePath%>static/img/bmz.jpg" class="in-pro-img">
                <div class="btn btn-primary in-v-t y-pointer">上传图片
                    <%--<input id="file01" type="file" class="fileBtn">--%>
                    <input id="file01" type="file" class="fileBtn" name="file"/>
                </div>
                <input id="input01" type="text" value="" class="y-hide" data-value="上传图片的值">
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">首页轮播图二：</label>
            <div class="t-cell in-input">
                <img id="img02" src="<%=basePath%>static/img/bmz.jpg" class="in-pro-img">
                <div class="btn btn-primary in-v-t y-pointer">上传图片
                    <%--<input id="file01" type="file" class="fileBtn">--%>
                    <input id="file01" type="file" class="fileBtn" name="file"/>
                </div>
                <input id="input02" type="text" value="" class="y-hide" data-value="上传图片的值">
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">首页轮播图三：</label>
            <div class="t-cell in-input">
                <img id="img03" src="<%=basePath%>static/img/bmz.jpg" class="in-pro-img">
                <div class="btn btn-primary in-v-t y-pointer">上传图片
                    <%--<input id="file01" type="file" class="fileBtn">--%>
                    <input id="file01" type="file" class="fileBtn" name="file"/>
                </div>
                <input id="input03" type="text" value="" class="y-hide" data-value="上传图片的值">
            </div>
        </row>

    </div>

    <button class="btn btn-success">保存</button>

</section>

<%@include file="../commonSys/systemFooter.jsp" %>

<script>

    uploadFileFun('file01','input01','<%=basePath%>upload/uploadIndexImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input01','img01');
    });

    uploadFileFun('file02','input02','<%=basePath%>upload/uploadIndexImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input02','img02');
    });

    uploadFileFun('file03','input03','<%=basePath%>upload/uploadIndexImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input03','img03');
    });

    //获取信息
    function getList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'banner/getBannerList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    //赋值
                    $("#input01").val(""+dataList[0]['bannerImg']);
                    $("#img01").attr("src",""+dataList[0]['bannerImg']);
                    $("#input02").val(""+dataList[1]['bannerImg']);
                    $("#img02").attr("src",""+dataList[1]['bannerImg']);
                    $("#input03").val(""+dataList[2]['bannerImg']);
                    $("#img03").attr("src",""+dataList[2]['bannerImg']);

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
       var jsonObj = {};
       getList(jsonObj);
   }
   init();
</script>