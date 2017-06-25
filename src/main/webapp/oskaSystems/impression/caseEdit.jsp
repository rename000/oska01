<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<%

    String  caseId = request.getParameter("caseId");

%>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp?active=1"><i class="fa fa-home"></i> 主页</a></li>
    <li><a href="<%=basePath%>oskaSystems/impression/case.jsp?active=4&c_active=3"><i class="fa fa-columns"></i> 工程案例</a></li>
    <li class="active"><a href="#">编辑案例</a></li>
</ul>

<section class="panel panel-default add-b-t" style="min-width: 1000px;overflow: auto;">

    <div class="a-content">

        <!-- 项目基本资料 -->
        <header class="h4 text-left padder padder-v m-b"><strong>编辑案例</strong></header>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-m">案例名称：</label>
            <div class="t-cell in-input in-w-200"><input type="text" data-name="projectName" id="caseName" class="form-control" placeholder="请填写案例名称" value=""></div>
        </row>

        <row class="dis-table padder m-b m-l-40">
            <label class="t-cell in-name in-v-t">案例图：</label>
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


    //编辑
    function editFun(jsonObj) {
        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>cases/updateCases',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    window.location.href = '<%=basePath%>oskaSystems/impression/case.jsp?active=4&c_active=3';
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

    //获取案例信息
    function getcaseList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'cases/getCasesList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    //赋值
                    $("#caseName").val(""+dataList[0]['caseName']);
                    $("#input01").val(""+dataList[0]['caseImg']);
                    $("#img01").attr("src",""+dataList[0]['caseImg']);
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
        var caseIdVal = "<%=caseId%>";

        if(caseIdVal=="" || caseIdVal==undefined){
            window.location.href = '<%=basePath%>oskaSystems/impression/case.jsp?active=4&c_active=3';
        }else {
            var jsonObj = {caseId:caseIdVal};
            getcaseList(jsonObj);
        }

    }
    init();

    uploadFileFun('file01','input01','<%=basePath%>upload/uploadCaseImg',function(data){
        //成功后的回调函数
        successFun('imgURLHead',data,'input01','img01');
    });

    //保存
    $("#saveBtn").click(function(){
        var caseIdVal = "<%=caseId%>";
        var caseNameVal = $("#caseName").val();
        var caseImg = $("#input01").val();

        //校验
        if(caseIdVal == ''){
            alert("案例Id不能为空！")
            return;
        }
        if(caseNameVal == ''){
            alert("请填写案例名称")
            return;
        }
        if(caseImg == ''){
            alert("请上传案例图片")
            return;
        }

        var jsonObj = {
                caseId:caseIdVal,
                caseName:caseNameVal,
                caseImg:caseImg
        };

        editFun(jsonObj);
    });


</script>