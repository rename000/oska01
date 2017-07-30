<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp"><i class="fa fa-home"></i> 主页</a></li>
    <li><a href="<%=basePath%>oskaSystems/products/products.jsp?active=2"><i class="fa fa-columns"></i> 产品管理</a></li>
    <li class="active"><a href="#">新增产品</a></li>
</ul>

<section class="panel panel-default add-b-t" style="min-width: 1000px;overflow: auto;">

    <div class="a-content">

        <!-- 项目基本资料 -->
        <header class="h4 text-left padder padder-v m-b"><strong>新增产品</strong></header>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">产品名称：</label>
            <div class="t-cell in-input in-w-200"><input type="text" data-name="projectName" id="productName" class="form-control" placeholder="请填写产品名称" value=""></div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">产品类型：</label>
            <div class="t-cell in-input in-w-200">
                <select id="productType" class="form-control" >
                    <%--<option value="1">橡木仿古</option>--%>
                    <%--<option value="2">橡木人字拼</option>--%>
                    <%--<option value="3">原木手工拼花</option>--%>
                    <%--<option value="4">强化地板</option>--%>
                </select>
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">产品简介：</label>
            <div class="t-cell in-input in-w-500">
                <textarea id="productInfo" class="form-control" rows="5"></textarea>
            </div>
        </row>

        <row class="dis-table padder m-b m-l-40">
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
    //获得产品列表
    function getProductTypeList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'productType/getProductType',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
                console.log('data===='+JSON.stringify(data));
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr += '<option value="'+ dataList[i]['proTypeId'] +'">'+ dataList[i]['proTypeName'] +'</option>';
                    }

                    $("#productType").html(htmlStr);
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

    uploadFileFun('file01','input01','<%=basePath%>upload/uploadImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input01','img01');
    });

    //保存
    $("#saveBtn").click(function(){
        var productNameVal = $("#productName").val();
        var productInfoVal = $("#productInfo").val();
        var productImgVal = $("#input01").val();
        var productTypeVal = $("#productType").val();
        //校验
        if(productNameVal == ''){
            alert("请填写产品名称")
            return;
        }
        if(productInfoVal == ''){
            alert("请填写产品简介")
            return;
        }
        if(productImgVal == ''){
            alert("请上传产品图片")
            return;
        }

        var jsonObj = {
                productName:productNameVal,
                productInfo:productInfoVal,
                productImg:productImgVal,
                productType:productTypeVal
        };


        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>product/addProduct',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    window.location.href = '<%=basePath%>oskaSystems/products/products.jsp?active=2';
                }else{
                    console.log("code为0： 新增失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }

        };
        $.ajax(option);
    });


    //初始化
    function init(){
        var jsonObj = {};
        getProductTypeList(jsonObj);
    }
    init();
</script>