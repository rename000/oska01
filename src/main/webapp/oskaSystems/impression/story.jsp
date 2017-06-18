<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<div class="a-content m-v-40 text-center">
    <h3 class="h3">关于欧饰家 </h3>
    <div id="div1" style="height: 300px;">
        <p>请输入内容...</p>
    </div>
</div>

<div class="text-center m-t-md">
    <button id="saveBtn" type="button" class="btn btn-success in-w-196">保存</button>
</div>

<link rel="stylesheet" href="<%=basePath%>static/js/wangEditor/css/wangEditor.min.css" type="text/css" />
<script type="text/javascript" src="<%=basePath%>static/js/wangEditor/wangEditor.min.js" ></script>
<script>
    var editor = new wangEditor('div1');
    editor.create();

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

    $("#saveBtn").click(function () {
        var impressionDescVal = $("#div1").html();
        var jsonObj = {
            impressionId:2,
            impressionDesc:impressionDescVal
        };

        var option = {
            url:'<%=basePath%>impression/updateImpression',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }

        };
        $.ajax(option);
    })

</script>

<%@include file="../commonSys/systemFooter.jsp" %>

