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
            <a class="btn btn-sm btn-primary">新增产品类型</a>
        </div>

        <form id="formObj">
        <div class="col-sm-3">
            <select id="productType" name="productType" class="form-control" placeholder="产品类型" style="height: 30px;padding: 5px 10px;">
                <option value="">(全部)状态</option>
                <option value="0">上线</option>
                <option value="1">下线</option>
            </select>
        </div>

        <div class="col-sm-3">
            <div class="input-group">
                <input name="productName" type="text" class="input-sm form-control" placeholder="产品类型">
                    <span class="input-group-btn">
                    <button id="searchBtn" class="btn btn-sm btn-default" type="button">搜索</button>
                    </span>
            </div>
        </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>产品ID</th>
                <th style="width: 18%">产品名称</th>
                <th style="width: 18%">产品类型</th>
                <th>产品简介</th>
                <th>产品图</th>
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

<%@include file="../commonSys/systemFooter.jsp" %>

<script type="text/javascript">

    //获得产品列表
    function getList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'product/getProductList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
                console.log('data===='+JSON.stringify(data));
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['productId'] +"</td>"+
                            "<td>"+ dataList[i]['productName'] +"</td>"+
                            "<td>"+ dataList[i]['productTypeDesc'] +"</td>"+
                            "<td>"+ dataList[i]['productInfo'] +"</td>"+
                            "<td> <img src='"+ dataList[i]['productImg'] +"' style='width: 30px;height: 30px;' /> </td>"+
                            "<td>"+
                            "<a class='a-c-blue m-r editBtn' id='edit_" + dataList[i]['productId'] + "' >编辑</a>"+
                            "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['productId'] + "'>删除</a>"+
                            "</td></tr>";
                    }

                    $("#productList").html(htmlStr);
                    $("#total").html(data.data.count);
                    createPagePlugin(data.data.count,jsonObj.size);
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
            url:'<%=basePath%>' + 'product/getProductList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
                console.log('data===='+JSON.stringify(data));
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['productId'] +"</td>"+
                            "<td>"+ dataList[i]['productName'] +"</td>"+
                            "<td>"+ dataList[i]['productTypeDesc'] +"</td>"+
                            "<td>"+ dataList[i]['productInfo'] +"</td>"+
                            "<td> <img src='"+ dataList[i]['productImg'] +"' style='width: 30px;height: 30px;' /> </td>"+
                            "<td>"+
                            "<a class='a-c-blue m-r editBtn' id='edit_" + dataList[i]['productId'] + "' >编辑</a>"+
                            "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['productId'] + "'>删除</a>"+
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
            url:'<%=basePath%>' + 'product/deleteProduct',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    alert(data.msg);
                    var jsonObjS = {nub:"",size:""};
                    getProductList(jsonObjS);
                }else{
                    alert(data.msg);
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
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

    //editBtn
    $("body").on("click",".editBtn",function(){
        var productIdVal = $(this).attr("id").split("_")[1];
        if(productIdVal=="" || productIdVal==undefined){
            alert("获取Id异常！");
        }else {
            window.location.href = "<%=basePath%>" + "oskaSystems/products/productsEdit.jsp?active=2&productId=" + productIdVal;
        }
    });

    //delBtn
    $("body").on("click",".delBtn",function(){
        if(confirm("确定要删除吗？")){
            var productIdVal = $(this).attr("id").split("_")[1];
            var jsonObj = {productId:productIdVal};
            console.log("jsonObj===========" + JSON.stringify(jsonObj));
            delBtnFun(jsonObj);
        }
    });

    //分页 pagePlugin
    var createPagePlugin = function(total, size) {
        $("#paging").empty();
        paging = pagePlugin.createPaging({
            renderTo: 'paging',
            total: total,
            pageSize: size,
            currentPage:1
        });
        paging.goPage = function(from, to) {
            pageFun(from - 1, size);
        }
    };
    //翻页
    var pageFun = function(from,pageSize){
        var jsonObj = {nub: "" + from,size: "" + pageSize};
        var formObj = $("#formObj").serializeObject();
        jsonObj = $.extend(jsonObj,formObj);
        getProductList(jsonObj);
    }

    //初始化
    function init(){
        var jsonObj = {nub:0,size:2};
        getList(jsonObj);
    }
    init();
</script>