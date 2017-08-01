<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp?active=1"><i class="fa fa-home"></i> 主页</a></li>
    <li class="active"><a href="#"><i class="fa fa-columns"></i> 产品管理</a></li>
</ul>

<section class="panel panel-default">
    <header class="panel-heading"> 产品类型 </header>
    <div class="row text-sm wrapper">
        <div class="col-sm-6 m-b-xs">
            <a id="addModel" class="btn btn-sm btn-primary">新增产品类型</a>
        </div>

        <%--<form id="formObj">--%>
        <%--<div class="col-sm-3">--%>
            <%--<select id="productType" name="productType" class="form-control" placeholder="产品类型" style="height: 30px;padding: 5px 10px;">--%>
                <%--<option value="">(全部)状态</option>--%>
                <%--<option value="0">上线</option>--%>
                <%--<option value="1">下线</option>--%>
            <%--</select>--%>
        <%--</div>--%>

        <%--<div class="col-sm-3">--%>
            <%--<div class="input-group">--%>
                <%--<input name="productName" type="text" class="input-sm form-control" placeholder="产品类型">--%>
                    <%--<span class="input-group-btn">--%>
                    <%--<button id="searchBtn" class="btn btn-sm btn-default" type="button">搜索</button>--%>
                    <%--</span>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--</form>--%>
    </div>
    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>产品类型ID</th>
                <th>产品类名称</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="productList">
            <%--<tr>--%>
                <%--<td>2017</td>--%>
                <%--<td>红木地板</td>--%>
                <%--<td>红木地板木质非常好</td>--%>
                <%--<td>http://wwww.badu.com</td>--%>
                <%--<td>--%>
                    <%--<a class="a-c-blue m-r">编辑</a>--%>
                    <%--<a class="c-red y-pointer m-r">删除</a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            </tbody>
        </table>
    </div>
    <footer class="panel-footer">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 text-left text-center-xs">
                <%--<small class="text-muted inline m-t-sm m-b-sm">当前展示20-30条,总共 50 条;每页10条;</small>--%>
                <small class="text-muted inline m-t-sm m-b-sm">总共 <span id="total">--</span> 条</small>
            </div>

            <div class="col-lg-9 col-md-9 col-sm-9 text-right text-center-xs" id="paging">
                <%--<ul class="pagination pagination-sm m-t-none m-b-none inline-li m-b">--%>
                    <%--<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>--%>
                    <%--<li><a href="#">1</a></li>--%>
                    <%--<li class="active"><a href="#">2</a></li>--%>
                    <%--<li><a href="#">3</a></li>--%>
                    <%--<li><a href="#">4</a></li>--%>
                    <%--<li><a href="#">5</a></li>--%>
                    <%--<li><a href="#">...</a></li>--%>
                    <%--<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>--%>
                <%--</ul>--%>
            </div>

        </div>
    </footer>
</section>

<!-- （Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    新增产品类型
                </h4>
            </div>
            <div class="modal-body">
                <div class="dis-table text-left" style="margin: auto;width: 70%">
                    <span class="t-cell in-v-m" style="width: 101px;">产品类型名称：</span>
                    <span class="t-cell in-input in-w-200"><input id="productTypeName" class="form-control" value="" placeholder="请填写产品类型名称" /></span>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button id="saveBtn" type="button" class="btn btn-primary">
                    保存
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- （Modal） -->
<div class="modal fade" id="myModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title">
                    编辑产品类型
                </h4>
            </div>
            <div class="modal-body">
                <div class="dis-table text-left" style="margin: auto;width: 70%">
                    <span class="t-cell in-v-m" style="width: 101px;">产品类型名称：</span>
                    <span class="t-cell in-input in-w-200"><input id="productTypeNameEdit" class="form-control" value="" placeholder="请填写产品类型名称" /></span>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button id="editBtn" type="button" class="btn btn-primary">
                    保存
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%@include file="../commonSys/systemFooter.jsp" %>

<script type="text/javascript">

    //获得产品列表
    function getList(jsonObj){
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
                        htmlStr +=  "<tr><td>"+ dataList[i]['proTypeId'] +"</td>"+
                            "<td>"+ dataList[i]['proTypeName'] +"</td>"+
                            "<td>"+
                            "<a class='a-c-blue m-r editBtn' data-name='"+ dataList[i]['proTypeName'] +"' id='edit_" + dataList[i]['proTypeId'] + "' >编辑</a>"+
                            "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['proTypeId'] + "'>删除</a>"+
                            "</td></tr>";
                    }

                    $("#productList").html(htmlStr);
                    $("#total").html(dataList.length);
//                    createPagePlugin(data.data.count,jsonObj.size);
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
    function getProductList(jsonObj){
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
                        htmlStr +=  "<tr><td>"+ dataList[i]['proTypeId'] +"</td>"+
                            "<td>"+ dataList[i]['proTypeName'] +"</td>"+
                            "<td>"+
                            "<a class='a-c-blue m-r editBtn' data-name='"+ dataList[i]['proTypeName'] +"'  id='edit_" + dataList[i]['proTypeId'] + "' >编辑</a>"+
                            "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['proTypeId'] + "'>删除</a>"+
                            "</td></tr>";
                    }

                    $("#productList").html(htmlStr);
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

    //删除产品
    function delBtnFun(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'productType/deleteProductType',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    alert(data.msg);
                    init();
                }else{
                    alert(data.msg);
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
//        alert("删除")
        $.ajax(option);
    }

    //searchBtn
    $("#searchBtn").click(function(){
        var jsonObj = {nub:0,size:2};
        var formObj = $("#formObj").serializeObject();
        jsonObj = $.extend(jsonObj,formObj);
        console.log("jsonObj===============" + JSON.stringify(jsonObj));
        getList(jsonObj);
    });

    //saveBtn
    $("body").on("click","#saveBtn",function(){
        var productTypeName = $("#productTypeName").val();
        if(productTypeName=="" || productTypeName==undefined){
            alert("产品类型名称不能为空！");
            return;
        }
        var jsonObj = {
            proTypeName:productTypeName,
        };

        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>productType/addProductType',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    $("#myModal").modal("hide");
                    $("#productTypeName").val("");

                    var jsonObj = {nub:0,size:2};
                    var formObj = $("#formObj").serializeObject();
                    jsonObj = $.extend(jsonObj,formObj);
                    console.log("jsonObj===============" + JSON.stringify(jsonObj));
                    getList(jsonObj);

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

    //editBtn
    var proTypeId = "";
    $("body").on("click",".editBtn",function(){
        var productIdVal = $(this).attr("id").split("_")[1];
        var productIdName = $(this).attr("data-name");
        if(productIdVal=="" || productIdVal==undefined){
            alert("获取Id异常！");
            return;
        }
        proTypeId = productIdVal;
//        alert(productIdName);
        $("#productTypeNameEdit").val(productIdName);
        $("#myModalEdit").modal("show");
    });

    $("body").on("click","#editBtn",function(){
        var productTypeNameEdit = $("#productTypeNameEdit").val();
        if(productTypeNameEdit=="" || productTypeNameEdit==undefined){
            alert("产品类型名称不能为空！");
            return;
        }
        var jsonObj = {
            proTypeId:proTypeId,
            proTypeName:productTypeNameEdit,
        };

        console.log("jsonObj================"+ JSON.stringify(jsonObj));
        var option = {
            url:'<%=basePath%>productType/updateProductType',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObj)},
            success:function(data){
                //            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){

                    alert("保存成功");
                    $("#myModalEdit").modal("hide");
                    $("#productTypeNameEdit").val("");

                    var jsonObj = {nub:0,size:2};
                    var formObj = $("#formObj").serializeObject();
                    jsonObj = $.extend(jsonObj,formObj);
                    console.log("jsonObj===============" + JSON.stringify(jsonObj));
                    getList(jsonObj);

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

    //delBtn
    $("body").on("click",".delBtn",function(){
        if(confirm("确定要删除吗？")){
            var productIdVal = $(this).attr("id").split("_")[1];
            var jsonObj = {proTypeId:productIdVal};
            console.log("jsonObj===========" + JSON.stringify(jsonObj));
            delBtnFun(jsonObj);
        }
    });



    //初始化
    function init(){
        var jsonObj = {};
        getList(jsonObj);
    }
    init();

    $("body").on("click","#addModel",function(){
        $('#myModal').modal('show')
    });


</script>