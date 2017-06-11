<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp"><i class="fa fa-home"></i> 主页</a></li>
    <li class="active"><a href="#"><i class="fa fa-columns"></i> 产品管理</a></li>
</ul>

<section class="panel panel-default">
    <header class="panel-heading"> 产品管理列表 </header>
    <div class="row text-sm wrapper">
        <div class="col-sm-9 m-b-xs">
            <a href="<%=basePath%>oskaSystems/products/productsAdd.jsp" class="btn btn-sm btn-primary">新增产品</a>
        </div>

        <div class="col-sm-3">
            <form id="formObj">
            <div class="input-group">
                <input name="productName" type="text" class="input-sm form-control" placeholder="产品名称">
                    <span class="input-group-btn">
                    <button id="searchBtn" class="btn btn-sm btn-default" type="button">搜索</button>
                    </span>
            </div>
           </form>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>产品ID</th>
                <th style="width: 18%">产品名称</th>
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
            <div class="col-lg-3 col-md-4 col-sm-4 text-left text-center-xs">
                <small class="text-muted inline m-t-sm m-b-sm">当前展示20-30条,总共 50 条;每页10条;</small>
            </div>

            <div class="col-lg-6 col-md-4 col-sm-4 text-right text-center-xs">
                <ul class="pagination pagination-sm m-t-none m-b-none inline-li m-b">
                    <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">...</a></li>
                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                </ul>
            </div>

            <div class="col-lg-2 col-md-2 col-sm-2 text-right text-center-xs">
                <div class="input-group m-auto dis-table">
                    <span class="t-cell"><button class="btn btn-sm btn-default" type="button">首页</button></span>
                    <span class="t-cell"><button class="btn btn-sm btn-default" type="button">尾页</button></span>
                    <span class="t-cell in-v-m"><input type="tel" class="input-sm form-control m-l" value="" placeholder="填页数" style="width: 60px;"></span>
                    <span class="t-cell"><button class="btn btn-sm btn-default" type="button">跳转</button></span>
                </div>
            </div>
        </div>
    </footer>
</section>

<%@include file="../commonSys/systemFooter.jsp" %>

<script type="text/javascript">

    var jsonObj = {};
    //获得产品列表
    function getProductList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'product/getProductList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    console.log('dataList===='+JSON.stringify(dataList));
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['productId'] +"</td>"+
                                "<td>"+ dataList[i]['productName'] +"</td>"+
                                "<td>"+ dataList[i]['productInfo'] +"</td>"+
                                "<td> <img src='"+ dataList[i]['productImg'] +"' style='width: 30px;height: 30px;' /> </td>"+
                                "<td>"+
                                "<a class='a-c-blue m-r'>编辑</a>"+
                                "<a class='c-red y-pointer m-r'>删除</a>"+
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

    getProductList(jsonObj);

    //searchBtn
    $("#searchBtn").click(function(){
        var formObj = $("#formObj").serializeObject();
        jsonObj = $.extend(jsonObj,formObj);
        console.log("jsonObj===============" + JSON.stringify(jsonObj));
        getProductList(jsonObj);

    })

</script>